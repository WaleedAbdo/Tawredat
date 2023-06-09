using BL;
using Domains;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web.Helpers;
using TawredatProject.Helpers;
using TawredatProject.Models;
using Twilio.Jwt.Taskrouter;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SalesInvoiceApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;
        ProductService productService;
        TawredatDbContext _context;
        public SalesInvoiceApiController(UserManager<ApplicationUser> usermanager,
            ProductService ProductService,
        TawredatDbContext Context)
        {
            _context = Context;
            Usermanager = usermanager;
            productService = ProductService;
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
        // POST api/<PurchasingCartApiController>
        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Post([FromBody] SalesInvoice model)
        {
            try
            {
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                List<TbPurchasingCart>  SuppProdu = await _context.TbPurchasingCarts.
                Where(x => x.CreatedBy.Equals(curUser.Id)&&x.CurrentState==1).ToListAsync();
                var Supplierinfo =  _context.TbPurchasingCarts.FirstOrDefault
                (x => x.CreatedBy == curUser.Id);
               
                if (SuppProdu.Count <=0 )
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found",
                       //  data = SuppProdu


                    });
                }
                decimal TotalInvoiceValue = Convert.ToDecimal(model.TotalInvoiceValue);
                decimal x = 0;
                string w = "";
                Guid PaymentId = new Guid();

                if (!string.IsNullOrWhiteSpace(model.Promocode) && !model.Promocode.Contains(" "))
                {
                  x=  Convert.ToDecimal(model.Promocode);

                }
                else
                {
                    x = 0;
                }
                if (model.DeliveryAddressID!=null)
                {
                    var Address = _context.TbAddresses.FirstOrDefault(a => a.AddressId == model.DeliveryAddressID);
                    if (Address != null)
                    {
                        w = Address.AddressCity + Address.AddressArea;

                    }
                   

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "لا يوجد عنوان يجب ادخال عنوان",
                        data = new
                        {
                            DeliveryAddress = w,
                        }
                    });
                }

                if (model.PaymnetMethodId==0)
                {
                    PaymentId = new Guid("7ee2fb6b-517e-4081-8632-399ae92db748");


                }else if(model.PaymnetMethodId==1)
                {

                    PaymentId = new Guid("fc8a6328-a572-45a1-9de2-15c2163aa55e");

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "لا يوجد طريقة دفع يجب ادخال طريقة دفع",
                        data = new
                        {
                            PaymnetMethodId = PaymentId,
                        }
                    });

                }
                //Calculate Invoice
                decimal total = (x / 100) * 100;
                decimal AfterDisc = TotalInvoiceValue - total;
                decimal totalTax = AfterDisc * Convert.ToDecimal(.14);
                decimal totalAftertax = AfterDisc + totalTax;
                decimal deliverycost = 25;
                decimal totalAfter = AfterDisc + totalTax + deliverycost;
                var message = "";
                var rat = "%";
                var taxrate = rat+14;
                //Check PocketBalance
                Guid guid = new Guid("7ee2fb6b-517e-4081-8632-399ae92db748");
                if (PaymentId == guid)
                {
                    decimal totalcharge = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("شحن")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                    decimal totalPays = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("سحب")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                    decimal walletbalance = totalcharge - totalPays;

                    if (walletbalance >= totalAfter)
                    {

                        message = " ورصيدك الحالى '" + walletbalance + "'";

                    }
                    else
                    {
                        //var tbSale = await _context.TbSalesInvoices.Where(x => x.SalesInvoiceId == invoice.SalesInvoiceId).FirstOrDefaultAsync();


                        //_context.Remove(tbSale);
                        //_context.SaveChanges();
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "الرصيد غير كافى .....يرجى الشحن المحفظة لاتمام عملة الدفع",
                            data = { },
                        });


                    }


                }

                TbSalesInvoice invoice = new TbSalesInvoice()
                {
                    SupplierId = Supplierinfo.SupplierId,
                    SupplierName = Supplierinfo.SupplierName,
                    CreatedBy = curUser.Id,
                    Id=curUser.Id,
                    Name=curUser.UserName,
                    DeliveryAddress = w,
                    DeliveryManId = model.DeliveryManId,
                    DeliveryManName = model?.DeliveryManName,
                    PaymnetMethodId = PaymentId,
                    PaymnetMethodName = _context.TbPaymentMethods.FirstOrDefault(a=>a.PaymentMethodId== PaymentId).PaymentMethodName,
                    TotalInvoiceValue = model.TotalInvoiceValue,
                    Promocode = model.Promocode,
                    DelivryDate = model.DelivryDate,
                    TaxValue = totalTax,
                    TotalAfterTax = totalAftertax,
                    TotalInvoiceAfter=totalAfter,
                    DeliveryValue = deliverycost,
                    DiscValue= total,
                    CurrentState=4

                };

                _context.TbSalesInvoices.Add(invoice);
                _context.SaveChanges();
                //_context.SaveChanges();
                List<TbSalesInvoiceProduct> SInvItems = new List<TbSalesInvoiceProduct>();
                foreach (TbPurchasingCart SI in SuppProdu)
                {
                    int quantity =0;
                    string productsId="" ;
                    foreach (var items in model.item)
                    {
                        //var products = item.Split(',');
                        //foreach (var produc in products)
                        //{
                        var parts = items.Split('/');
                        productsId = parts[0];
                        quantity = int.Parse(parts[1]);
                      
                       
                    
                      var produ = model.item.FirstOrDefault(p => new Guid(productsId) == SI.ProductId);
                        if (produ != null)
                        {
                            var productId = productsId;
                            var product = _context.TbProducts.FirstOrDefault(a => a.ProductId == new Guid(productId));
                            var productQantity = quantity;
                            int QuitityProduct = 0;

                            if (productQantity > 0)
                            {

                                QuitityProduct = productQantity;
                            }
                            else
                            {
                                QuitityProduct = 0;
                            }
                            if (product.Quantity > QuitityProduct)
                            {

                             

                               // _context.SaveChanges();
                            }
                            else
                            {
                                var tbSales = await _context.TbSalesInvoices.Where(x => x.SalesInvoiceId == invoice.SalesInvoiceId).FirstOrDefaultAsync();


                                _context.Remove(tbSales);
                                _context.SaveChanges();
                                return Ok(new ApiResponse<object>()
                                {
                                    Code = "409",
                                    Status = false,
                                    Message = "The quantity is not available",
                                    data = new
                                    {
                                        ProductName = SI.ProductName,
                                    }
                                });
                            }
                            var y = "";
                            if (SI.ProductPriceAfterDiscount != null)
                            {
                                y = SI.ProductPriceAfterDiscount;
                            }
                            else
                            {
                                y = SI.ProductPrice;

                            }
                            TbSalesInvoiceProduct SD = new TbSalesInvoiceProduct()
                            {
                                SalesInvoiceId = invoice.SalesInvoiceId,
                                ProductId = SI.ProductId,
                                ProductImage = SI.ProductImage,
                                ProductName = SI.ProductName,
                                ProductPrice = y,
                                DiscountPercent = SI.DiscountPercent,
                                SupplierId = SI.SupplierId,
                                SupplierName = SI.SupplierName,
                                Promocode = SI.Promocode,
                                //Related PurchasingCartId.
                                Notes = SI.PurchasingCartId.ToString(),
                                ProductPriceAfterDiscount = SI.ProductPriceAfterDiscount,
                                ProductQty = QuitityProduct.ToString()
                            };

                            _context.TbSalesInvoiceProducts.Add(SD);
                        }
                    }
                    
                }
               
     

                _context.SaveChanges();

                //var deliverycost = 25;
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم عملية الشراء بنجاح",
                    data = new
                    {
                        SalesInvoiceId = invoice.SalesInvoiceId,
                        TotalInvoiceValue = invoice.TotalInvoiceValue,
                        DiscValue = invoice.DiscValue,
                        totalTax = invoice.TaxValue ,
                        taxrate= taxrate,
                        TotalAfterTax=invoice.TotalAfterTax,
                        deliverycost = invoice.DeliveryValue,
                        totalAfter = invoice.TotalInvoiceAfter,
                        message= message
                    }
                }) ;

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
     
        [HttpGet]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Get(Guid SalesId)
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                try
                {
                    //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                    var tbSales = await _context.TbSalesInvoices.Where(x => x.CreatedBy.Equals(curUser.Id)&&x.SalesInvoiceId== SalesId).ToListAsync();

                    List<salesOrderMaserVm> ListCart = new List<salesOrderMaserVm>();
                    if (tbSales.Count <= 0)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "not found Data",
                            // Exceptions = "not found",
                        });


                    }
                    foreach (var item in tbSales)
                    {
                        salesOrderMaserVm salesOrderMaser = new salesOrderMaserVm()
                        {
                            SalesInvoiceId=item.SalesInvoiceId,
                            //PaymnetMethodName = item.PaymnetMethodName,
                            DeliveryAddress=item.DeliveryAddress,
                            PaymnetMethodName = "دفع الكترونى",
                            PhoneNumber = curUser.PhoneNumber,
                            TotalInvoiceValue = item.TotalInvoiceValue,
                            DiscValue = item.DiscValue,
                            TaxValue = item.TaxValue,
                            TotalAfterTax = item.TotalAfterTax,
                            DeliveryValue = item.DeliveryValue,
                            TotalInvoiceAfter = item.TotalInvoiceAfter, 
                            
                            

                        };
                        List<TbSalesInvoiceProduct> productSales = await _context.TbSalesInvoiceProducts.Where(x =>  x.SalesInvoiceId == item.SalesInvoiceId).ToListAsync();
                        List<salesOrderdetailsVm> productVMs = new List<salesOrderdetailsVm>();


                        foreach (TbSalesInvoiceProduct invoiceProduct in productSales)
                        {



                            bool favor = false;
                            var favorit = _context.TbFavourites.FirstOrDefault(b => b.ProductId == invoiceProduct.ProductId && b.CreatedBy == curUser.Id);
                            var Evaluatey = _context.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == invoiceProduct.ProductId);
                            var products = _context.TbProducts.FirstOrDefault(x => x.ProductId == invoiceProduct.ProductId);

                            if (favorit != null)
                            {
                                favor = true;

                            }
                            else
                            {
                                favor = false;
                            }
                            var x = "";
                            if (invoiceProduct.ProductPriceAfterDiscount != null)
                            {
                                x = invoiceProduct.ProductPriceAfterDiscount;
                            }
                            else
                            {
                                x = invoiceProduct.ProductPrice;

                            }
                            salesOrderdetailsVm productVM = new salesOrderdetailsVm()
                            {
                                ProductId=invoiceProduct.ProductId,
                                ProductName = invoiceProduct.ProductName,
                                ProductEvaluationText = Evaluatey?.ProductEvaluationText,
                                ProductEvaluationStarts = Evaluatey?.StartsNo,
                                Quantity =Convert.ToInt32( invoiceProduct.ProductQty),
                                SupplierName = invoiceProduct.SupplierName,
                                ProductImage = DomainUrl + "Uploads/" + invoiceProduct.ProductImage,
                                ProductPrice = invoiceProduct.ProductPrice,
                                ProductPriceAfterDiscount = x,
                                IsFavourit = favor
                            };
                            productVMs.Add(productVM);
                        }
                        salesOrderMaser.InvoicedetailsVms = productVMs;
                        ListCart.Add(salesOrderMaser);
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


        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        [Route("~/api/StatusOrder")]
        public async Task<IActionResult> Post(StatusOrderVM vM)
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                try
                {
                    var tbSales = _context.TbSalesInvoices.FirstOrDefault(x => x.CreatedBy==curUser.Id && x.SalesInvoiceId == vM.SalesInvoiceId);
                    if(tbSales != null)
                    {
                        tbSales.CurrentState = vM.CurrentState;

                        _context.TbSalesInvoices.Update(tbSales);
                        _context.SaveChanges();
                        if( vM.CurrentState == 0)
                        {
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم التوصيل الطلب بنجاح ",
                                data = tbSales.SalesInvoiceId,
                            });
                        }
                        else if(vM.CurrentState == 1)
                        {
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم شحن الطلب بنجاح ",
                                data = tbSales.SalesInvoiceId,
                            });
                        }
                        else if (vM.CurrentState == 2)
                        {
                            
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم الغاءه الطلب بنجاح ",
                                data = tbSales.SalesInvoiceId,
                            });
                        }
                        else if(vM.CurrentState == 3)
                        {
                            Guid guid = new Guid("7ee2fb6b-517e-4081-8632-399ae92db748");
                            if (tbSales.PaymnetMethodId == guid)
                            {
                                decimal totalcharge = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("شحن")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                                decimal totalPays = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("سحب")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                                decimal walletbalance = totalcharge - totalPays;
                                
                                if (walletbalance >= tbSales.TotalInvoiceAfter)
                                {
                                    
                                    Decimal AfterCal = walletbalance - tbSales.TotalInvoiceAfter;
                                    TbCharge tb = new TbCharge()
                                    {
                                        ChargeType = "سحب",
                                        ChargeValue = tbSales.TotalInvoiceAfter.ToString(),
                                        Notes = "دفع فاتورة رقم '" + tbSales.SalesInvoiceId + "'",
                                        CreatedBy = curUser.Id,
                                        Id = curUser.Id,

                                    };
                                    _context.TbCharges.Add(tb);
                                   

                                    List<TbSalesInvoiceProduct> tbSalesInvoices = _context.TbSalesInvoiceProducts.Where(a=> a.SalesInvoiceId == vM.SalesInvoiceId).ToList();
                                    if(tbSalesInvoices.Count>0)
                                    {
                                        foreach (var item in tbSalesInvoices)
                                        {

                                            var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.PurchasingCartId == new Guid(item.Notes)).FirstOrDefaultAsync();
                                            tbPurchasings.CurrentState = 0;
                                            _context.TbPurchasingCarts.Update(tbPurchasings);
                                            var qu = productService.getAll().FirstOrDefault(a => a.ProductId == item.ProductId);

                                            qu.Quantity = qu.Quantity - Convert.ToInt32(item.ProductQty);

                                            productService.Edit(qu);

                                        }
                                        _context.SaveChanges();
                                        return Ok(new ApiResponse<object>()
                                        {
                                            Code = "200",
                                            Status = true,
                                            Message = "تم الدفع بنجاح ",
                                            data = tbSales.SalesInvoiceId,
                                        });

                                    }
                                    else
                                    {
                                        return Ok(new ApiResponse<object>()
                                        {
                                            Code = "409",
                                            Status = true,
                                            Message = "حدث خطأ اثناء الدفع ",
                                            data = tbSales.SalesInvoiceId,
                                        });
                                    }
                                   

                                }
                                else
                                {
                                    return Ok(new ApiResponse<object>()
                                    {
                                        Code = "409",
                                        Status = false,
                                        Message = "الرصيد غير كافى .....يرجى الشحن المحفظة لاتمام عملة الدفع",
                                        data = tbSales.SalesInvoiceId,
                                    });


                                }


                            }


                            List<TbSalesInvoiceProduct> tbSalesInvoice = _context.TbSalesInvoiceProducts.Where(a => a.SalesInvoiceId == vM.SalesInvoiceId).ToList();
                            if (tbSalesInvoice.Count > 0)
                            {
                                foreach (var item in tbSalesInvoice)
                                {

                                    var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.PurchasingCartId == new Guid(item.Notes)).FirstOrDefaultAsync();
                                    tbPurchasings.CurrentState = 0;
                                    _context.TbPurchasingCarts.Update(tbPurchasings);
                                    var qu = productService.getAll().FirstOrDefault(a => a.ProductId == item.ProductId);

                                    qu.Quantity = qu.Quantity - Convert.ToInt32(item.ProductQty);

                                    productService.Edit(qu);

                                }
                                _context.SaveChanges();
                                return Ok(new ApiResponse<object>()
                                {
                                    Code = "200",
                                    Status = true,
                                    Message = "تم الدفع بنجاح ",
                                    data = tbSales.SalesInvoiceId,
                                });

                            }
                            else
                            {
                                return Ok(new ApiResponse<object>()
                                {
                                    Code = "409",
                                    Status = true,
                                    Message = "حدث خطأ اثناء الدفع ",
                                    data = tbSales.SalesInvoiceId,
                                });
                            }
                        }
                        else
                        {
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "409",
                                Status = false,
                                Message = " لبدمن ادخال حالة الطلب ",
                                data = tbSales.SalesInvoiceId,
                            });

                        }


                    }
                    else
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "404",
                            Status = true,
                            Message = "لم يتم العثور على رقم الفاتورة  ",
                            data = vM.SalesInvoiceId,
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


        [HttpGet]
        [Authorize(Policy = "MixedAccess")]
        [Route("~/api/MyPocket")]
        public async Task<IActionResult> Get()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                try
                {
                    List<MyPocketVM> ListCart = new List<MyPocketVM>();
                    var tbSales = _context.TbSalesInvoices.Where(x => x.CreatedBy == curUser.Id&&x.CurrentState==1).ToList();
                    if (tbSales.Count <= 0)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "not found Data",
                            // Exceptions = "not found",
                        });


                    }
                    foreach (var item in tbSales)
                    {
                        MyPocketVM salesOrderMaser = new MyPocketVM()
                        {
                            //Description = "",
                           // PaymnetMethodName = item.PaymnetMethodName,
                            SalesInvoiceId = item.SalesInvoiceId,
                            TotalInvoiceValue = item.TotalInvoiceValue,
                            DateTime =  item.CreatedDate?.ToString("yyyy/MM/dd"),
                           

                        };
                        ListCart.Add(salesOrderMaser);
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



        }
        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        [Route("~/api/Reorder")]
        public async Task<IActionResult> Reorder(ReorderVM reorder)
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                try
                {
                    //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                    var tbSales = await _context.TbSalesInvoices.Where(x => x.CreatedBy.Equals(curUser.Id) && x.SalesInvoiceId ==  reorder.SalesInvoiceId).ToListAsync();

                    List<ReOrderAddVM> ListCart = new List<ReOrderAddVM>();
                    if (tbSales.Count <= 0)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "not found Data",
                            // Exceptions = "not found",
                        });


                    }
                   
                    foreach (var item in tbSales)
                    {
                        decimal TotalInvoiceValue = Convert.ToDecimal(item.TotalInvoiceValue);
                        decimal x = 0;
                        if (!string.IsNullOrEmpty(reorder.Promocode))
                        {
                            x = Convert.ToDecimal(reorder.Promocode);

                        }
                        else
                        {
                            x = 0;
                        }
                        decimal total = (x / 100) * 100;
                        decimal AfterDisc = TotalInvoiceValue - total;
                        decimal totalTax = AfterDisc * Convert.ToDecimal(.14);
                        decimal totalAftertax = AfterDisc + totalTax;
                        decimal deliverycost = 25;
                        decimal totalAfter = AfterDisc + totalTax + deliverycost;


                        var rat = "%";
                        var taxrate = rat + 14;
                        TbSalesInvoice invoice = new TbSalesInvoice()
                        {
                            SupplierId = new Guid(curUser.Id),
                            SupplierName = curUser.FirstName,
                            CreatedBy = curUser.Id,
                            DeliveryAddress = item.DeliveryAddress,
                            DeliveryManId = item?.DeliveryManId,
                            DeliveryManName = item?.DeliveryManName,
                            PaymnetMethodId = item?.PaymnetMethodId,
                            PaymnetMethodName = "دفع الكترونى",
                            TotalInvoiceValue = item.TotalInvoiceValue,
                            Promocode = item.Promocode,
                            DelivryDate = item.DelivryDate,
                            TaxValue = totalTax,
                            TotalAfterTax = totalAftertax,
                            TotalInvoiceAfter = totalAfter,
                            DeliveryValue = deliverycost,
                            DiscValue = total,
                            CurrentState=4

                        };

                        _context.TbSalesInvoices.Add(invoice);

                        _context.SaveChanges();

                        List<TbSalesInvoiceProduct> productSales = await _context.TbSalesInvoiceProducts.Where(x => x.SalesInvoiceId == item.SalesInvoiceId).ToListAsync();
                        //List<TbSalesInvoiceProduct> SInvItems = new List<TbSalesInvoiceProduct>();
                        foreach (TbSalesInvoiceProduct SI in productSales)
                        {

                     
                            var product = _context.TbProducts.FirstOrDefault(a => a.ProductId == SI.ProductId);
                            

                            int QuitityProduct = 0;
                            if (Convert.ToInt32(SI.ProductQty) > 0)
                            {

                                QuitityProduct = Convert.ToInt32(SI.ProductQty);
                            }
                            else
                            {
                                QuitityProduct = 0;
                            }
                            TbSalesInvoiceProduct SD = new TbSalesInvoiceProduct();
                            SD.SalesInvoiceId = invoice.SalesInvoiceId;
                            SD.ProductId = SI.ProductId;
                            SD.ProductImage = SI.ProductImage;
                            SD.ProductName = SI.ProductName;
                            SD.ProductPrice = SI.ProductPrice;



                            if (product.Quantity > QuitityProduct)
                            {
                                SD.ProductQty = QuitityProduct.ToString();
                            }
                            else
                            {
                                var tbPurchasings = await _context.TbSalesInvoices.Where(x => x.SalesInvoiceId == invoice.SalesInvoiceId).FirstOrDefaultAsync();


                                _context.Remove(tbPurchasings);
                                _context.SaveChanges();
                                return Ok(new ApiResponse<object>()
                                {
                                    Code = "409",
                                    Status = false,
                                    Message = "The quantity is not available",
                                    data = new
                                    {
                                        ProductName = SD.ProductName,
                                    }
                                });
                            }
                            SD.ProductPriceAfterDiscount = SI.ProductPriceAfterDiscount;
                            var y = "";
                            if (SD.ProductPriceAfterDiscount != null)
                            {
                                y = SD.ProductPriceAfterDiscount;
                            }
                            else
                            {
                                y = SD.ProductPrice;

                            }
                            //  var total= Convert.ToInt32(x) * Convert.ToInt32(SD.ProductQty);
                            SD.DiscountPercent = SI.DiscountPercent;
                            SD.SupplierId = SI.SupplierId;
                            SD.SupplierName = SI.SupplierName;

                            // SD.TotalProductValue = total.ToString();
                            SD.Promocode = SI.Promocode;
                            //  model.TotalInvoiceValue += SD.TotalProductValue;

                            _context.TbSalesInvoiceProducts.Add(SD);

                        }
                        _context.SaveChanges();
                        ReOrderAddVM reOrderAddVM = new ReOrderAddVM()
                        {
                            SalesInvoiceId = invoice.SalesInvoiceId,
                            TotalInvoiceValue =Convert.ToDecimal(invoice.TotalInvoiceValue),
                            DiscValue = invoice.DiscValue,
                            totalTax = invoice.TaxValue,
                            taxrate = taxrate,
                            TotalAfterTax = invoice.TotalAfterTax,
                            deliverycost = invoice.DeliveryValue,
                            totalAfter = invoice.TotalInvoiceAfter

                            //TaxValue = totalTax,
                            //TotalAfterTax = totalAftertax,
                            //TotalInvoiceAfter = totalAfter,
                            //DeliveryValue = deliverycost,
                            //DiscValue = total,

                        };
                        ListCart.Add(reOrderAddVM);



                    }

                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم عملية الشراء بنجاح",
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
           



        }





    }
}
