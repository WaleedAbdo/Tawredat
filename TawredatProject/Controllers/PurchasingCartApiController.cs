using BL;
using Domains;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MimeKit.Encodings;
using Org.BouncyCastle.Math.EC.Rfc7748;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers
{
   // [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class PurchasingCartApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;
        PurchasingCartService purchasingCartService;
        TawredatDbContext _context;
        public PurchasingCartApiController(UserManager<ApplicationUser> usermanager, 
            PurchasingCartService PurchasingCartService, TawredatDbContext Context)
        {
            purchasingCartService = PurchasingCartService;
            _context = Context;
            Usermanager = usermanager;
        }
        public static string DomainUrl
        {
            get
            {
                IHttpContextAccessor _httpContextAccessor = new HttpContextAccessor();
                var request = _httpContextAccessor.HttpContext.Request;
                var baseUrl = $"{request.Scheme}://{request.Host}/";

                return baseUrl;
            }
        }
        // GET: api/<PurchasingCartApiController>
       // [Authorize]
        [HttpGet]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Get()
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
                {
                    try
                    {
                        //List<TbFavourite> tbFavourites = new List<TbFavourite>(); get allcart dot transfer order
                        var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.CreatedBy.Equals(curUser.Id)&&x.CurrentState==1).ToListAsync();

                        List<GetPurchasingCartVM> ListCart = new List<GetPurchasingCartVM>();
                        if (tbPurchasings.Count <= 0)
                        {
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "not found Data",
                                data =  ListCart
                            });


                        }
                        foreach (var cart in tbPurchasings)
                        {
                            bool favor = false;
                            var favorit = _context.TbFavourites.FirstOrDefault(b => b.ProductId == cart.ProductId&&b.CreatedBy==curUser.Id);
                             var Evaluatey = _context.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == cart.ProductId);
                            var products = _context.TbProducts.FirstOrDefault(x => x.ProductId == cart.ProductId);

                        if (favorit != null)
                            {
                                favor = true;

                            }
                            else
                            {
                                favor = false;
                            }
                               var x = "";
                             if (cart.ProductPriceAfterDiscount != null) 
                               {
                                  x = cart.ProductPriceAfterDiscount;
                               }
                             else
                              {
                                 x = cart.ProductPrice;

                                }
                            GetPurchasingCartVM getPurchasingCart = new GetPurchasingCartVM()
                            {
                                ProductId = cart.ProductId,
                                ProductName = cart.ProductName,
                                ProductEvaluationText = Evaluatey?.ProductEvaluationText,
                                ProductEvaluationStarts = Evaluatey?.StartsNo,
                                Quantity=1,
                                SupplierName = cart.SupplierName,
                                ProductImage = DomainUrl + "Uploads/" + cart.ProductImage,
                                ProductPrice=cart.ProductPrice,
                                 ProductPriceAfterDiscount = x,
                                IsFavourit = favor
                            };

                            ListCart.Add(getPurchasingCart);
                        }

                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = ListCart,
                        });

                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "404",
                            Status = false,
                            Message = " not found",
                            Exceptions = e.Message
                        });

                    }
                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = " not found user",
                     
                    });

                }
                // return favouriteService.getAll().Where(A => A.UserId == curUser.Id).ToList();

           

        }

        // GET api/<PurchasingCartApiController>/5
        [HttpGet("{id}")]
        public IEnumerable<TbPurchasingCart> Get(string id)
        {
            return purchasingCartService.getAll().Where(A => A.Id == id).ToList();
        }

        // POST api/<PurchasingCartApiController>
        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Post([FromBody] AddPurchasingCartVM cartVM)
        {
            try
            {

              
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                TbPurchasingCart Cart = await _context.TbPurchasingCarts.Where(y => y.ProductId == cartVM.ProductId && y.CreatedBy == curUser.Id&&y.CurrentState==1).FirstOrDefaultAsync();
                if (Cart != null)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = " تم الاضافة للسلة من قبل",
                        data = new
                        {
                            ProductId = cartVM.ProductId,
                        }
                       
                    });

                }
                TbProduct SuppProdu = await _context.TbProducts.Where(x => x.ProductId.Equals(cartVM.ProductId)).FirstOrDefaultAsync();
                if (SuppProdu == null)
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found"
                    });
                }

                var Evaluate = _context.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == SuppProdu.ProductId);
                var supplier = _context.TbStores.FirstOrDefault(x => x.StoreId == SuppProdu.StoreId);

                TbPurchasingCart cart = new TbPurchasingCart()
                {
                    Id=curUser.Id,
                    Name = curUser.UserName,
                    ProductPrice = SuppProdu.ProductPrice,
                    ProductImage = SuppProdu.ProductImage,
                    SupplierId = supplier?.SupplierId,
                    ProductId = cartVM.ProductId,
                    ProductEvaluationNumber = Evaluate?.ProductEvaluationText,
                    ProductEvaluationStarts = Evaluate?.StartsNo,
                    ProductName = SuppProdu.ProductName,
                    SupplierName = supplier?.SupplierName,
                    ProductMaximumSale=cartVM.ProductMaximumSale,
                    Promocode=cartVM.Promocode,
                    ProductPriceAfterDiscount=cartVM.ProductPriceAfterDiscount,
                    DiscountPercent=cartVM.DiscountPercent,
                    CreatedBy = curUser.Id,
                   // SupplierProductId=SuppProdu.SupplierProductId,
                };

                _context.TbPurchasingCarts.Add(cart);
                _context.SaveChanges();

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم الاضافة للسلة",
                    data = new
                    {
                        SupplierId = cart?.SupplierId,
                        ProductId = cart.ProductId,
                        PurchasingCartId= cart.PurchasingCartId,

                    }
                });

            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "not found"
                });

            }

        }

        // PUT api/<PurchasingCartApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<PurchasingCartApiController>/5
        [HttpPost]
        [Route("~/DeleteProductOfCart")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> DeleteProductOfCart(Guid ProductId)
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            //var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.CreatedBy
            //   .Equals(curUser.Id)).ToListAsync();
            try
            {
                  var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.CreatedBy.Equals(curUser.Id) && x.ProductId == ProductId).FirstOrDefaultAsync();

                //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                if (tbPurchasings == null)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "not found Data",
                        // Exceptions = "not found",
                    });


                }
                var reasult = _context.Remove(tbPurchasings);
                //
                _context.SaveChanges();
                if (reasult != null)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم الحذف"
                    });
                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "حدث خطأ اثناء الحذف"
                    });

                }



            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = e.Message
                });

            }
        }
    }
}
