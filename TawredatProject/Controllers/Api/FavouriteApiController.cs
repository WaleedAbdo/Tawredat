using BL;
using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authentication;
using Microsoft.Extensions.Logging;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers.Api
{

    [Route("api/[controller]")]
    [ApiController]
    public class FavouriteApiController : ControllerBase
    {
        private readonly ILogger<FavouriteApiController> _logger;
        UserManager<ApplicationUser> Usermanager;

        FavouriteService favouriteService;
        TawredatDbContext _context;
        public FavouriteApiController(UserManager<ApplicationUser> usermanager,
            FavouriteService FavouriteService, TawredatDbContext Context, ILogger<FavouriteApiController> logger)
        {
            favouriteService = FavouriteService;
            _context = Context;
            _logger = logger;

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
        // GET: api/<FavouriteApiController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<FavouriteApiController>/5
        [HttpGet("{id}")]
        public IEnumerable<TbFavourite> Get(string id)
        {

            return favouriteService.getAll().Where(A => A.Id == id).ToList();
        }



        [HttpGet("~/api/GetMyFavourit")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetFavourit()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var user = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            try
            {

                if (user != null)
                {
                    var tbFavourite = await _context.TbFavourites.Where(x => x.UserId.Equals(user.Id)).ToListAsync();

                    List<FavouriteGetVM> ListFavourite = new List<FavouriteGetVM>();
                    foreach (var favourite in tbFavourite)
                    {
                        FavouriteGetVM favouriteGetVM = new FavouriteGetVM()
                        {

                            ProductId = favourite.ProductId,
                            ProductName = favourite.ProductName,
                            ProductEvaluationText = favourite.ProductEvaluationNumber,
                            ProductEvaluationStarts = favourite.ProductEvaluationStarts,
                            SupplierName = favourite.SupplierName,
                            ProductImage = DomainUrl + "Uploads/" + favourite.ProductImage,
                            ProductPrice = favourite.ProductPrice,
                        };

                        ListFavourite.Add(favouriteGetVM);
                    }

                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = ListFavourite,
                    });


                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = " not found user",
                        Exceptions = "not found"
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
                    Exceptions = "not found"
                });

            }
            // return Ok("Bearer token received and validated");






        }

        // POST api/<FavouriteApiController>
        [HttpPost]
        [Route("~/api/AddFavourit")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Post([FromBody] FavouriteAddVM favouriteAddVM)
        {
            //   var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            try
            {
                if (curUser != null)
                {
                    var SuppProdu = await _context.TbProducts.Where(x => x.ProductId == favouriteAddVM.ProductId).FirstOrDefaultAsync();
                    if (SuppProdu != null)
                    {
                        var cur = _context.TbFavourites.FirstOrDefault(a => a.ProductId == favouriteAddVM.ProductId && a.CreatedBy == curUser.Id);
                        if (cur == null)
                        {

                            var Evaluate = _context.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == SuppProdu.ProductId);
                            var supplier = _context.TbStores.FirstOrDefault(x => x.StoreId == SuppProdu.StoreId);
                            TbFavourite tbFavourite = new TbFavourite()
                            {
                                Name = SuppProdu.ProductName,
                                ProductPrice = SuppProdu.ProductPrice,
                                ProductImage = SuppProdu.ProductImage,
                                SupplierId = supplier?.SupplierId,
                                ProductId = favouriteAddVM.ProductId,
                                ProductEvaluationNumber = Evaluate?.ProductEvaluationText,
                                ProductEvaluationStarts = Evaluate?.StartsNo,
                                ProductName = SuppProdu.ProductName,
                                SupplierName = supplier?.SupplierName,
                                UserId = curUser.Id,
                                CreatedBy = curUser.Id,
                            };
                            _context.TbFavourites.Add(tbFavourite);
                            _context.SaveChanges();

                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم الاضافة للمفضلة",
                                data = new
                                {
                                    tbFavourite.FavouritesId,
                                    tbFavourite.ProductId,
                                }
                            });

                        }
                        else
                        {

                            var x = favouriteService.Delete(cur);

                            _context.SaveChanges();

                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = " تم الحذف",
                                data = new
                                {

                                    favouriteAddVM.ProductId,
                                }
                            });

                        }
                    }
                    else
                    {
                        return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                        {
                            Code = "409",
                            Status = true,
                            Message = "Not Found"
                        });

                    }

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = " user not found",
                        Exceptions = "not found"
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
                    Exceptions = "not found"
                });

            }


        }
        [HttpGet("~/api/GetMytoken")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        public async Task<ActionResult<string>> Gettoken()
        {
            var token = await HttpContext.GetTokenAsync("access_token");
            return token;
        }
        [HttpPost]
        [Route("~/api/AddEvaluation")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Post(Guid? SalesInvoiceId, string ProductEvaluationText, string StartsNo)
        {
            try
            {
                var SuppProdu = _context.TbSalesInvoiceProducts.Where(x => x.SalesInvoiceId == SalesInvoiceId).ToList();
                if (SuppProdu != null)
                {
                    foreach (var item in SuppProdu)
                    {


                        var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                        var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                        if (SuppProdu == null)
                        {
                            return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                            {
                                Code = "409",
                                Status = true,
                                Message = "Not Found"
                            });
                        }

                        TbEvaluationProduct tbFavourite = new TbEvaluationProduct()
                        {
                            ProductName = item.ProductName,
                            CreatedBy = curUser.Id,
                            ProductId = item.ProductId,
                            StartsNo = StartsNo,

                            ProductEvaluationText = ProductEvaluationText


                        };


                        _context.TbEvaluationProducts.Add(tbFavourite);
                    }
                    _context.SaveChanges();

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = " not data",
                        Exceptions = "not data"
                    });

                }


                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم التقييم ينجاح",
                    data = new
                    {
                        SalesInvoiceId,


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
        [HttpPost]
        [Route("~/api/AddEvaluationDelivery")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Postdata(Guid? SalesInvoiceId, string ProductEvaluationText, string StartsNo)
        {
            try
            {
                var SuppProdu = _context.TbSalesInvoices.FirstOrDefault(x => x.SalesInvoiceId == SalesInvoiceId);
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                if (SuppProdu == null)
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found"
                    });
                }

                TbEvaluationDelivery tbEvaluationDelivery = new TbEvaluationDelivery()
                {
                    DeliveryName = SuppProdu.DeliveryManName,
                    CreatedBy = curUser.Id,
                    DeliveryId = SuppProdu.DeliveryManId,
                    StartsNo = StartsNo,

                    DeliveryEvaluationText = ProductEvaluationText


                };

                _context.TbEvaluationDeliveries.Add(tbEvaluationDelivery);
                _context.SaveChanges();

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم التقييم ينجاح",
                    data = new
                    {
                        DeliveryId = SuppProdu.DeliveryManId,
                        tbEvaluationDelivery.DeliveryEvaluationId,

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
        [HttpPost]
        [Route("~/api/AddEvaluationSupplier")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> PostDat(Guid? SalesInvoiceId, string SupplierProductEevaluationText, string StartsNo)
        {
            try
            {
                var SuppProdu = _context.TbSalesInvoices.FirstOrDefault(x => x.SalesInvoiceId == SalesInvoiceId);
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                if (SuppProdu == null)
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found"
                    });
                }

                TbEvaluationSupplierProduct tbFavourite = new TbEvaluationSupplierProduct()
                {
                    SupplierName = SuppProdu.SupplierName,
                    CreatedBy = curUser?.Id,
                    SupplierId = SuppProdu.SupplierId,
                    StartsNo = StartsNo,

                    SupplierProductEevaluationText = SupplierProductEevaluationText


                };

                _context.TbEvaluationSupplierProducts.Add(tbFavourite);
                _context.SaveChanges();

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم التقييم ينجاح",
                    data = new
                    {
                        supplierId = SuppProdu.SupplierId,
                        EvaluationSupplierId = tbFavourite.SupplierProductEvaluationId,

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
        [HttpGet]
        [Route("~/api/GetEvaluation")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetEvaluationProduct()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

            // return favouriteService.getAll().Where(A => A.UserId == curUser.Id).ToList();
            try
            {
                //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                var tbFavourite = await _context.TbEvaluationProducts.Where(x => x.CreatedBy.Equals(curUser.Id)).ToListAsync();

                List<EvaluationProductGetVM> ListFavourite = new List<EvaluationProductGetVM>();
                foreach (var favourite in tbFavourite)
                {
                    EvaluationProductGetVM favouriteGetVM = new EvaluationProductGetVM()
                    {
                        ProductName = favourite.ProductName,
                        ProductEvaluationText = favourite.ProductEvaluationText,
                        StartsNo = favourite.StartsNo,
                        CreatedBy = favourite.CreatedBy,
                        //ProductImage = favourite.ProductImage,
                        //ProductPrice = favourite.ProductPrice,
                    };

                    ListFavourite.Add(favouriteGetVM);
                }

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListFavourite,
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
        [HttpGet]
        [Route("~/api/GetEvaluationSupplier")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetEvaluationSupplier()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

            // return favouriteService.getAll().Where(A => A.UserId == curUser.Id).ToList();
            try
            {
                //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                var tbEvaluation = await _context.TbEvaluationSupplierProducts.Where(x => x.CreatedBy.Equals(curUser.Id)).ToListAsync();

                List<EvaluationSupplierGetVM> ListFavourite = new List<EvaluationSupplierGetVM>();
                foreach (var favourite in tbEvaluation)
                {
                    EvaluationSupplierGetVM favouriteGetVM = new EvaluationSupplierGetVM()
                    {
                        SupplierName = favourite.SupplierName,
                        SupplierEvaluationText = favourite.SupplierProductEevaluationText,
                        StartsNo = favourite.StartsNo,
                        CreatedBy = favourite.CreatedBy,
                        //ProductImage = favourite.ProductImage,
                        //ProductPrice = favourite.ProductPrice,
                    };

                    ListFavourite.Add(favouriteGetVM);
                }

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListFavourite,
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
        [HttpGet]
        [Route("~/api/GetEvaluationDelivery")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetEvaluationDelivery()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            // return favouriteService.getAll().Where(A => A.UserId == curUser.Id).ToList();
            try
            {
                //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                var tbEvaluat = await _context.TbEvaluationDeliveries.Where(x => x.CreatedBy.Equals(curUser.Id)).ToListAsync();

                List<EvaluationdeliveryGetVM> vMs = new List<EvaluationdeliveryGetVM>();
                foreach (var delivery in tbEvaluat)
                {
                    EvaluationdeliveryGetVM evaluationdeliveryGet = new EvaluationdeliveryGetVM()
                    {
                        DeliveryName = delivery.DeliveryName,
                        ProductEvaluationText = delivery.DeliveryEvaluationText,
                        StartsNo = delivery.StartsNo,
                        CreatedBy = delivery.CreatedBy,
                        //ProductImage = favourite.ProductImage,
                        //ProductPrice = favourite.ProductPrice,
                    };

                    vMs.Add(evaluationdeliveryGet);
                }

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = vMs,
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


        //  PUT api/<FavouriteApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<FavouriteApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

    }
}
