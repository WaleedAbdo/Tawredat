using BL;
using Domains;
using MailKit.Search;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Org.BouncyCastle.Utilities;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Xml.Linq;
using TawredatProject.Dtos;
using TawredatProject.Helpers;
using TawredatProject.Models;
using Twilio.Jwt.Taskrouter;
using Twilio.Rest.Numbers.V2.RegulatoryCompliance.Bundle;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class SearchApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;
        ProductService productService;
        ProductCategoryService productCategoryService;
        SupplierProductService supplierProductService;
        SupplierCategoryService supplierCategoryService;
        EvaluationSupplierProductService evaluationSupplierProductService;
        SalesInvoiceService salesInvoiceService;
        SalesInvoiceProductService salesInvoiceProductService;
        PaymentMethodService paymentMethodService;
        SupplierService supplierService;
        CityService cityService;
        TawredatDbContext Ctx;
        public SearchApiController(ProductService ProductService, TawredatDbContext Context,
            ProductCategoryService ProductCategoryService, CityService CityService,
            SupplierCategoryService SupplierCategoryService, SupplierService SupplierService,
            SupplierProductService SupplierProductService, UserManager<ApplicationUser> usermanager,
            EvaluationSupplierProductService EvaluationSupplierProductService, PaymentMethodService PaymentMethodService,
            SalesInvoiceProductService SalesInvoiceProductService, SalesInvoiceService SalesInvoiceService)
        {
            productService = ProductService;
            supplierProductService = SupplierProductService;
            evaluationSupplierProductService = EvaluationSupplierProductService;
            productCategoryService = ProductCategoryService;
            supplierCategoryService = SupplierCategoryService;
            salesInvoiceProductService = SalesInvoiceProductService;
            paymentMethodService = PaymentMethodService;
            supplierService = SupplierService;
            cityService = CityService;
            Usermanager = usermanager;
            Ctx = Context;
            salesInvoiceService = SalesInvoiceService;
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
        // GET: api/<SearchApiController>
        [HttpGet]
        [Route("~/api/GetAllProduct")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Get()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            List<TbProduct> products = productService.getAll();
            List<ProductVM> Listproduct = new List<ProductVM>();
            bool favor = false;
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

            foreach (var item in products)
            {
                var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == item.ProductId);
                var prod = Ctx.TbStores.FirstOrDefault(a => a.StoreId == item.StoreId);

                if (curUser != null)
                {

                    var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == item.ProductId && curUser.Id == b.CreatedBy);
                    if (favorit != null)
                    {
                        favor = true;

                    }
                    else
                    {
                        favor = false;
                    }
                }
                else
                {
                    favor = false;
                }

                ProductVM product = new ProductVM()
                {
                    ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    ProductDescription = item.ProductDescription,
                    ProductCategoryName = item.ProductDescription,
                    ProductPrice = item.ProductPrice,
                    ProductNewPrice = item.ProductNewPrice,
                    SupplierId = prod?.SupplierId,
                    SupplierName = prod?.SupplierName,
                    ProductImage = DomainUrl + "Uploads/" + item.ProductImage,
                    StartsNo = Evaluate?.StartsNo,
                    IsFavourit = favor
                };

                Listproduct.Add(product);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = Listproduct,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user name or password"
                });

            }

        }
        [HttpGet]
        [Route("~/api/GetAllCategory")]
        //[Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetCategory()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            List<TbProductCategory> categories = productCategoryService.getAll();
            List<ProductCategoryVM> ListCategory = new List<ProductCategoryVM>();
            // List<TbProduct> products = productService.getAll();

            foreach (var item in categories)
            {
                ProductCategoryVM Category = new ProductCategoryVM()
                {
                    ProductCategoryId = item.ProductCategoryId,
                    ProductCategoryName = item.ProductCategoryName,
                    ProductCategoryDescription = item.ProductCategoryDescription,
                    ProductCategoryImage = DomainUrl + "Uploads/" + item.ProductCategoryImage,


                };
                List<TbProduct> products = productService.getAll().Where(a => a.ProductCategoryId == Category.ProductCategoryId).ToList();
                List<ProductVM> productVMs = new List<ProductVM>();
                foreach (TbProduct product in products)
                {
                    var prod = Ctx.TbStores.FirstOrDefault(a => a.StoreId == product.StoreId);
                    bool favor = false;
                    //var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                    //var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                    //if (curUser != null)
                    //{

                    var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == product.ProductId);
                    if (favorit != null)
                    {
                        favor = true;

                    }
                    else
                    {
                        favor = false;
                    }
                    //}
                    //else
                    //{
                    //    favor = false;
                    //}

                    var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == product.ProductId);

                    if (prod != null)
                    {


                        ProductVM productVM = new ProductVM()
                        {
                            ProductId = product.ProductId,
                            ProductName = product.ProductName,
                            ProductDescription = product.ProductDescription,
                            ProductPrice = product.ProductPrice,
                            ProductCategoryName = product.ProductCategoryName,
                            ProductNewPrice = product.ProductNewPrice,
                            SupplierId = prod?.SupplierId,
                            SupplierName = prod?.SupplierName,
                            ProductImage = DomainUrl + "Uploads/" + product.ProductImage,
                            StartsNo = Evaluate?.StartsNo,
                            IsFavourit = favor,

                        };

                        productVMs.Add(productVM);

                    }
                    else
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = " not found",
                            Exceptions = "invalid"
                        });
                    }


                }

                Category.products = productVMs;
                ListCategory.Add(Category);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListCategory,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "invalid "
                });

            }

        }
        [HttpGet]
        [Route("~/api/GetAllSupplier")]
        public async Task<IActionResult> GetSupplier()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            List<TbSupplierCategory> categories = supplierCategoryService.getAll();
            List<SupplierCategoryVM> ListCategory = new List<SupplierCategoryVM>();
            // List<TbProduct> products = productService.getAll();

            foreach (var item in categories)
            {



                SupplierCategoryVM Category = new SupplierCategoryVM()
                {
                    SupplierCategoryId = item.SupplierCategoryId,
                    SupplierCategoryName = item.SupplierCategoryName,
                    SupplierCategoryDescription = item.SupplierCategoryDescription,
                };
                List<TbSupplier> products = supplierService.getAll().Where(a => a.SupplierCategoryId == Category.SupplierCategoryId).ToList();

                List<SupplierVM> productVMs = new List<SupplierVM>();
                foreach (TbSupplier product in products)
                {
                    var Evaly = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == product.SupplierId);
                    var x = Ctx.TbSupplierProducts.FirstOrDefault(a => a.SupplierId == product.SupplierId);
                    if (x != null)
                    {
                        SupplierVM productVM = new SupplierVM()
                        {
                            SupplierId = product.SupplierId,
                            SupplierName = product.SupplierName,
                            SupplierImage = DomainUrl + "Uploads/" + product.SupplierImage,
                            SupplierCityId = product.SupplierCityId,
                            SupplierCityName = product.SupplierCityName,
                            SupplierEvaluationText = Evaly?.SupplierProductEevaluationText,
                            SupplierEvaluationStars = Evaly?.StartsNo,
                            SupplierCategoryId = product.SupplierCategoryId,
                            SupplierCategoryName = item.SupplierCategoryName,


                        };

                        productVMs.Add(productVM);

                    }
                    //else
                    //{
                    //    return Ok(new ApiResponse<object>()
                    //    {
                    //        Code = "409",
                    //        Status = false,
                    //        Message = " لا يوجد له متجر",
                    //        Exceptions = "invalid "
                    //    });

                    //}



                }


                Category.suppliers = productVMs;
                ListCategory.Add(Category);




            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListCategory,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "invalid "
                });

            }

        }
        [HttpPost]
        [Route("~/api/GetAllsupplierbyid")]
        public async Task<IActionResult> GetSupplierId(SupplierSearchVM search)
        {

            var supp = supplierService.getAll().FirstOrDefault(a => a.SupplierId == search.SupplierId);
            if (supp != null)
            {
                var Evaly = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == search.SupplierId);

                SupplierProductVM supplierVM = new SupplierProductVM()
                {
                    SupplierId = supp.SupplierId,
                    SupplierName = supp.SupplierName,

                    SupplierImage = DomainUrl + "Uploads/" + supp.SupplierImage,
                    CustomersNumber = supp?.CustomersNumber,
                    SupplierEvaluationNumber = Evaly?.SupplierProductEevaluationText,
                    SupplierEvaluationStars = Evaly?.StartsNo,
                };
                if (Evaly != null)
                {
                    List<TbEvaluationSupplierProduct> Evaluations = evaluationSupplierProductService.getAll().Where(a => a.SupplierId == supplierVM.SupplierId).ToList();
                    List<EvaluationSupplierGetVM> vMs = new List<EvaluationSupplierGetVM>();

                    foreach (TbEvaluationSupplierProduct tbEvaluation in Evaluations)
                    {
                        //  var username = Usermanager.GetLoginsAsync( ApplicationUser user);
                        var y = "";
                        var x = Usermanager.Users.FirstOrDefault(a => a.Id == tbEvaluation.CreatedBy);
                        if (x != null)
                        {
                            y = x.UserName;
                        }
                        else
                        {
                            y = "0";
                        }
                        EvaluationSupplierGetVM evaluation = new EvaluationSupplierGetVM()
                        {
                            StartsNo = tbEvaluation.StartsNo,
                            SupplierEvaluationText = tbEvaluation.SupplierProductEevaluationText,
                            CreatedBy = y
                        };
                        vMs.Add(evaluation);
                    }
                    supplierVM.Evaluation = vMs;
                }


                List<TbSupplierProduct> SupplierProduct = supplierProductService.getAll().Where(a => a.SupplierId == search.SupplierId).ToList();
                List<SupplierProductVM> supplierProducts = new List<SupplierProductVM>();
                if (SupplierProduct != null)
                {

                    List<ProductCategoryVM> ListCategory = new List<ProductCategoryVM>();
                    foreach (var item in SupplierProduct)
                    {

                        List<TbProductCategory> categories = productCategoryService.getAll().Where(a => a.ProductCategoryId == item.ProductCategoryId).ToList();


                        foreach (var itm in categories)
                        {
                            ProductCategoryVM Category = new ProductCategoryVM()
                            {
                                ProductCategoryId = itm.ProductCategoryId,
                                ProductCategoryName = item.ProductCategoryName,
                                ProductCategoryDescription = itm.ProductCategoryDescription,
                                ProductCategoryImage = DomainUrl + "Uploads/" + itm.ProductCategoryImage,
                            };

                            List<TbProduct> products = productService.getAll().Where(a => a.ProductCategoryId == Category.ProductCategoryId && a.ProductId == item.ProductId).ToList();
                            List<ProductVM> productVMs = new List<ProductVM>();
                            foreach (TbProduct product in products)
                            {
                                var prod = Ctx.TbStores.FirstOrDefault(a => a.StoreId == product.StoreId);
                                bool favor = false;

                                var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == product.ProductId);
                                var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == product.ProductId);

                                if (prod != null)
                                {
                                    if (favorit != null)
                                    {
                                        favor = true;

                                    }
                                    else
                                    {
                                        favor = false;
                                    }

                                    ProductVM productVM = new ProductVM()
                                    {
                                        ProductId = product.ProductId,
                                        ProductName = product.ProductName,
                                        ProductDescription = product.ProductDescription,
                                        ProductPrice = product.ProductPrice,
                                        ProductCategoryName = product.ProductCategoryName,
                                        ProductNewPrice = product.ProductNewPrice,
                                        SupplierId = prod?.SupplierId,
                                        SupplierName = prod?.SupplierName,
                                        ProductImage = DomainUrl + "Uploads/" + product.ProductImage,
                                        StartsNo = Evaluate?.StartsNo,
                                        IsFavourit = favor,

                                    };

                                    productVMs.Add(productVM);

                                }
                                else
                                {
                                    return Ok(new ApiResponse<object>()
                                    {
                                        Code = "409",
                                        Status = false,
                                        Message = " not found",
                                        Exceptions = "invalid"
                                    });
                                }
                            }
                            Category.products = productVMs;
                            ListCategory.Add(Category);
                            //  supplierProducts.Add(supplierVM);
                        }
                    }


                    supplierVM.ProductCategory = ListCategory;
                    //supplierProducts.Add(supplierVM);
                    try
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = supplierVM,
                        });
                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "404",
                            Status = false,
                            Message = " not found",
                            Exceptions = "invalid "
                        });

                    }

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "غير مربوط بمتاجر",
                        Exceptions = "invalid "
                    });
                }


            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "invalid "
                });

            }



        }
        // GET: api/<SearchApiController>
        [HttpGet]
        [Route("~/api/GetProductbyCategoryId")]

        public async Task<IActionResult> Getbycategory(Guid Id)
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            List<TbProduct> products = productService.getAll().Where(a => a.ProductCategoryId == Id).ToList();
            List<ProductVM> Listproduct = new List<ProductVM>();

            foreach (var item in products)
            {
                ProductVM product = new ProductVM()
                {
                    ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    ProductDescription = item.ProductDescription,
                    ProductCategoryName = item.ProductDescription,
                    ProductPrice = item.ProductPrice,
                    ProductNewPrice = item.ProductNewPrice,
                };

                Listproduct.Add(product);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = Listproduct,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user name or password"
                });

            }

        }


        // GET api/<SearchApiController>/5
        [HttpGet]
        [Route("~/api/GetbyId")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> Get(Guid Id)
        {


            var data = productService.getAll().FirstOrDefault(a => a.ProductId == Id);

            if (data != null)
            {
                bool favor = false;



                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                if (curUser != null)
                {

                    var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == data.ProductId && curUser.Id == b.CreatedBy);
                    if (favorit != null)
                    {
                        favor = true;

                    }
                    else
                    {
                        favor = false;
                    }
                }
                else
                {
                    favor = false;
                }

                var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == data.ProductId);
                var supp = Ctx.TbStores.FirstOrDefault(x => x.StoreId == data.StoreId);
                var y = "";
                if (Evaluate != null)
                {
                    y = Evaluate.StartsNo;
                }
                else
                {
                    y = "0";
                }
                ProductVM productVM = new ProductVM()
                {

                    ProductId = data.ProductId,
                    ProductName = data.ProductName,
                    ProductDescription = data.ProductDescription,
                    ProductPrice = data.ProductPrice,
                    ProductNewPrice = data.ProductNewPrice,
                    ProductImage = DomainUrl + "Uploads/" + data.ProductImage,
                    ProductCategoryName = data.ProductCategoryName,
                    IsFavourit = favor,
                    StartsNo = y,
                    SupplierName = supp?.SupplierName


                };
                List<TbProduct> Sames = productService.getAll().Where(a => a.ProductCategoryId == data.ProductCategoryId).ToList();
                List<SameProductVM> vMs = new List<SameProductVM>();

                foreach (TbProduct tbEvaluation in Sames)
                {
                    var supplier = Ctx.TbStores.FirstOrDefault(x => x.StoreId == tbEvaluation.StoreId);
                    var favority = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == tbEvaluation.ProductId && curUser.Id == b.CreatedBy);
                    var Evaluatey = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == tbEvaluation.ProductId);
                    bool favors = false;
                    var x = "";
                    if (Evaluatey != null)
                    {
                        x = Evaluatey.StartsNo;
                    }
                    else
                    {
                        x = "0";
                    }
                    if (favority != null)
                    {
                        favors = true;

                    }
                    else
                    {
                        favors = false;
                    }
                    //  var username = Usermanager.GetLoginsAsync( ApplicationUser user);
                    SameProductVM evaluation = new SameProductVM()
                    {
                        ProductId = tbEvaluation.ProductId,
                        ProductName = tbEvaluation.ProductName,
                        ProductDescription = tbEvaluation.ProductDescription,
                        ProductCategoryName = tbEvaluation.ProductCategoryName,
                        SupplierName = supplier.SupplierName,
                        // ProductCategoryName=tbEvaluation.ProductCategoryName,
                        ProductImage = DomainUrl + "Uploads/" + tbEvaluation.ProductImage,
                        ProductPrice = tbEvaluation.ProductPrice,
                        ProductNewPrice = tbEvaluation.ProductNewPrice,
                        IsFavourit = favors,
                        StartsNo = x
                    };
                    vMs.Add(evaluation);
                }
                productVM.SameProducts = vMs;
                try
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = productVM

                    });
                }
                catch (Exception e)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = "user not found",
                        Exceptions = "invalid user name or password"
                    });

                }

            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "item not found",
                    Exceptions = "invalid"
                });

            }



        }
        // GET api/<SearchApiController>/5
        [HttpPost]
        [Route("~/api/GetbyName")]
        public async Task<IActionResult> GetbyName(SearchTermVM termVM)
        {
            bool favor = false;
            if (string.IsNullOrEmpty(termVM.Search))
            {
                List<TbProduct> productList = productService.getAll().ToList();
                List<ProductVM> productVM = new List<ProductVM>();
                foreach (var items in productList)
                {
                    var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == items.ProductId);
                    var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == items.ProductId);
                    var prod = Ctx.TbStores.FirstOrDefault(a => a.StoreId == items.StoreId);
                    if (favorit != null)
                    {
                        favor = true;

                    }
                    else
                    {
                        favor = false;
                    }
                    ProductVM product = new ProductVM()
                    {
                        ProductId = items.ProductId,
                        ProductName = items.ProductName,
                        ProductDescription = items.ProductDescription,
                        ProductPrice = items.ProductPrice,
                        ProductNewPrice = items.ProductNewPrice,
                        ProductCategoryName = items.ProductCategoryName,
                        ProductImage = DomainUrl + "Uploads/" + items.ProductImage,
                        IsFavourit = favor,
                        SupplierId = prod?.SupplierId,
                        SupplierName = prod?.SupplierName,
                        StartsNo = Evaluate?.StartsNo,
                    };
                    productVM.Add(product);
                }

                try
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = productVM

                    });
                }
                catch (Exception e)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = "product not found",
                        Exceptions = "invalid key"
                    });

                }

            }



            List<TbProduct> products = productService.getAll().Where(a => a.ProductName.Contains(termVM.Search)).ToList();
            List<ProductVM> productVMs = new List<ProductVM>();





            foreach (var item in products)
            {
                var favorit = Ctx.TbFavourites.FirstOrDefault(b => b.ProductId == item.ProductId);
                var Evaluate = Ctx.TbEvaluationProducts.FirstOrDefault(x => x.ProductId == item.ProductId);
                var prod = Ctx.TbStores.FirstOrDefault(a => a.StoreId == item.StoreId);
                if (favorit != null)
                {
                    favor = true;

                }
                else
                {
                    favor = false;
                }
                ProductVM product = new ProductVM()
                {
                    ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    ProductDescription = item.ProductDescription,
                    ProductPrice = item.ProductPrice,
                    ProductNewPrice = item.ProductNewPrice,
                    ProductCategoryName = item.ProductCategoryName,
                    ProductImage = DomainUrl + "Uploads/" + item.ProductImage,
                    IsFavourit = favor,
                    SupplierId = prod?.SupplierId,
                    SupplierName = prod?.SupplierName,
                    StartsNo = Evaluate?.StartsNo,
                };
                productVMs.Add(product);
            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = productVMs

                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "product not found",
                    Exceptions = "invalid key"
                });

            }



        }
        [HttpGet]
        [Route("~/api/GetAllCity")]

        public async Task<IActionResult> GetCity()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            List<TbCity> products = cityService.getAll();
            List<CityVM> Listproduct = new List<CityVM>();

            foreach (var item in products)
            {
                CityVM product = new CityVM()
                {
                    CityId = item.CityId,
                    CityName = item.CityName,

                };

                Listproduct.Add(product);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = Listproduct,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user name or password"
                });

            }

        }


        // POST api/<SearchApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<SearchApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<SearchApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

        [HttpPost]
        [Route("~/api/CheckCoupon")]
        public async Task<IActionResult> Post([FromBody] checkPromoCode model)
        {
            var tb = Ctx.TbPromocodes.FirstOrDefault(a => a.PromocodeTitle == model.PromocodeTitle);
            if (tb != null)
            {
                if (tb.EndDate > DateTime.UtcNow.Date)
                {
                    decimal total = Convert.ToDecimal(tb.PromocodeDiscountPercent) / 100 * 100;
                    decimal totalValueAfter = Convert.ToDecimal(model.totalInvoiceValue) - total;
                    decimal totalTax = totalValueAfter * Convert.ToDecimal(.14);
                    var deliverycost = 25;
                    var totalAfter = totalValueAfter + totalTax + deliverycost;
                    var rat = "%";
                    var taxrate = 14 + rat;
                    var parcent = "%";
                    var DiscountPercent = tb.PromocodeDiscountPercent + parcent;
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "كوبون صالح",
                        data = new
                        {

                            TotalInvoiceValue = model.totalInvoiceValue,
                            DiscountPercent,
                            totalValueAfter,
                            taxrate,
                            totalTax,
                            deliverycost,
                            totalAfter
                            //ProductId = cart.ProductId,
                            //PurchasingCartId = cart.PurchasingCartId,

                        }
                    });

                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "كوبون غير صالح",
                        data = new
                        {
                            tb.EndDate,
                            //ProductId = cart.ProductId,
                            //PurchasingCartId = cart.PurchasingCartId,

                        }
                    });

                }
            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "كوبون ليس له وجود",

                });

            }

        }

        [HttpGet]
        [Route("~/api/GetAllsalse")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetSalse()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                List<TbSalesInvoice> products = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                List<AllsalessVm> Listproduct = new List<AllsalessVm>();
                foreach (var item in products)
                {
                    var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                    var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                    var totQentity = Ctx.TbSalesInvoiceProducts.Where(a => a.SalesInvoiceProductId == item.SalesInvoiceId).ToList();
                    var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                    //var groupedItems = totQentity.GroupBy(x => x.ProductId);
                    //var itemCounts = groupedItems.Select(g => new { ProductId = g.Key, Count = g.Count() });
                    //int totalItemCount = itemCounts.Sum(x => x.Count);

                    //string strdate = item.CreatedDate?.ToString("yyyy, MMMM dd");
                    var x = "";
                    var y = "";
                    if (Evaluate != null)
                    {
                        x = Evaluate.StartsNo;
                    }
                    else
                    {
                        x = "0";
                    }
                    if (item.CurrentState == 0)
                    {
                        y = "تم التوصيل الطلب";
                    }
                    else if (item.CurrentState == 1)
                    {
                        y = "تم الشحن الطلب";
                    }
                    else if (item.CurrentState == 2)
                    {
                        y = "تم الغاء الطلب";

                    }
                    else
                    {
                        y = "'طلب جديد";
                    }
                    AllsalessVm allsaless = new AllsalessVm()
                    {
                        SalesInvoiceId = item.SalesInvoiceId,
                        SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                        supplierName = supplier?.SupplierName,

                        SupplierEvaluationstarNo = x,
                        ProductName = ProdctInv.ProductName,
                        status = y,
                        CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                        TotalQuntity = " 15",
                        TotalInvoiceAfter = item.TotalInvoiceAfter


                    };
                    Listproduct.Add(allsaless);
                }


                try
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = Listproduct,
                    });
                }
                catch (Exception e)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "invoice not found",
                        Exceptions = "invalid user name or password"
                    });

                }


            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid"
                });

            }




        }
        [HttpGet]
        [Route("~/api/GetAllsalsebyStatus")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetSalseOFStatus(List<int?> Status)
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                List<AllsalessVm> Listproduct = new List<AllsalessVm>();
                if (Status.Count == 0)
                {

                    List<TbSalesInvoice> product = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                    List<AllsalessVm> Listproducts = new List<AllsalessVm>();
                    foreach (var item in product)
                    {
                        var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        var totQentity = Ctx.TbSalesInvoiceProducts.Where(a => a.SalesInvoiceProductId == item.SalesInvoiceId).ToList();
                        var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                        //var groupedItems = totQentity.GroupBy(x => x.ProductId);
                        //var itemCounts = groupedItems.Select(g => new { ProductId = g.Key, Count = g.Count() });
                        //int totalItemCount = itemCounts.Sum(x => x.Count);

                        //string strdate = item.CreatedDate?.ToString("yyyy, MMMM dd");
                        var x = "";
                        var y = "";
                        if (Evaluate != null)
                        {
                            x = Evaluate.StartsNo;
                        }
                        else
                        {
                            x = "0";
                        }
                        if (item.CurrentState == 0)
                        {
                            y = "تم التوصيل الطلب";
                        }
                        else if (item.CurrentState == 1)
                        {
                            y = "تم الشحن الطلب";
                        }
                        else if (item.CurrentState == 2)
                        {
                            y = "تم الغاء الطلب";

                        }
                        else
                        {
                            y = "'طلب جديد";
                        }
                        AllsalessVm allsaless = new AllsalessVm()
                        {
                            SalesInvoiceId = item.SalesInvoiceId,
                            SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                            supplierName = supplier?.SupplierName,

                            SupplierEvaluationstarNo = x,
                            ProductName = ProdctInv.ProductName,
                            status = y,
                            CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                            TotalQuntity = " 15",
                            TotalInvoiceAfter = item.TotalInvoiceAfter


                        };
                        Listproducts.Add(allsaless);
                    }


                    try
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = Listproducts,
                        });
                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "invoice not found",
                            Exceptions = "invalid user name or password"
                        });

                    }

                }
                List<TbSalesInvoice> products = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id && Status.Contains(a.CurrentState)).ToList();
                if (products != null)
                {
                    foreach (var item in products)
                    {
                        var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        var totQentity = Ctx.TbSalesInvoiceProducts.Where(a => a.SalesInvoiceProductId == item.SalesInvoiceId).ToList();
                        var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                        //var groupedItems = totQentity.GroupBy(x => x.ProductId);
                        //var itemCounts = groupedItems.Select(g => new { ProductId = g.Key, Count = g.Count() });
                        //int totalItemCount = itemCounts.Sum(x => x.Count);

                        //string strdate = item.CreatedDate?.ToString("yyyy, MMMM dd");
                        var x = "";
                        var y = "";
                        if (Evaluate != null)
                        {
                            x = Evaluate.StartsNo;
                        }
                        else
                        {
                            x = "0";
                        }
                        if (item.CurrentState == 0)
                        {
                            y = "تم التوصيل الطلب";
                        }
                        else if (item.CurrentState == 1)
                        {
                            y = "تم الشحن الطلب";
                        }
                        else if (item.CurrentState == 2)
                        {
                            y = "تم الغاء الطلب";

                        }
                        else
                        {
                            y = "'طلب جديد";
                        }
                        AllsalessVm allsaless = new AllsalessVm()
                        {
                            SalesInvoiceId = item.SalesInvoiceId,
                            SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                            supplierName = supplier.SupplierName,
                            SupplierEvaluationstarNo = x,
                            ProductName = ProdctInv.ProductName,
                            status = y,
                            CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                            TotalQuntity = " 15",
                            TotalInvoiceAfter = item.TotalInvoiceAfter


                        };
                        Listproduct.Add(allsaless);
                    }


                    try
                    {

                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = Listproduct,
                        });
                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "invoice not found",
                            Exceptions = "invalid user name or password"
                        });

                    }


                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = "user not found",
                        data = Listproduct,
                        Exceptions = "invalid"
                    });

                }
            }
            return Ok(new ApiResponse<object>()
            {
                Code = "404",
                Status = false,
                Message = "user not found",
                Exceptions = "invalid"
            });




        }
        [HttpPost]
        [Route("~/api/GetAllsalseById")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetSalsebyId(salesInvoiceGetByIdVm model)
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                var salesMaster = salesInvoiceService.getAll().FirstOrDefault(a => a.SalesInvoiceId == model.SalesInvoiceId && a.CreatedBy == curUser.Id);
                if (salesMaster != null)
                {
                    salesInvoiceMaserVm productVM = new salesInvoiceMaserVm()
                    {
                        DeliveryAddress = salesMaster.DeliveryAddress,
                        TotalInvoiceValue = salesMaster.TotalInvoiceValue,
                        PaymnetMethodName = "دفع الكترونى",

                        PhoneNumber = curUser.PhoneNumber,


                    };



                    List<TbSalesInvoiceProduct> products = salesInvoiceProductService.getAll().Where(a => a.SalesInvoiceId == salesMaster.SalesInvoiceId).ToList();
                    List<salesInvoicedetailsVm> Listproduct = new List<salesInvoicedetailsVm>();
                    foreach (var item in products)
                    {
                        var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        salesInvoicedetailsVm invoicedetailsVm = new salesInvoicedetailsVm()
                        {
                            ProductImage = DomainUrl + "Uploads/" + item.ProductImage,
                            ProductName = item.ProductName,
                            SupplierName = supplier.SupplierName,
                        };
                        Listproduct.Add(invoicedetailsVm);

                    }
                    productVM.InvoicedetailsVms = Listproduct;
                    try
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = productVM,
                        });
                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "404",
                            Status = false,
                            Message = "user not found",
                            Exceptions = "invalid user name or password"
                        });

                    }
                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "404",
                        Status = false,
                        Message = "invoice not found",
                        Exceptions = "invalid Id"
                    });

                }


            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "409",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user "
                });

            }
            //return new string[] { "value1", "value2" };

            //  var data = productService.getAll();

        }
        [HttpGet]
        [Route("~/api/GetpaymentMethod")]
        public async Task<IActionResult> GetPaymentMethod()
        {
            List<TbPaymentMethod> products = paymentMethodService.getAll();
            List<PaymentMethodVM> Listproduct = new List<PaymentMethodVM>();

            foreach (var item in products)
            {
                PaymentMethodVM product = new PaymentMethodVM()
                {
                    PaymentMethodId = item.PaymentMethodId,
                    PaymentMethodName = item.PaymentMethodName,

                };

                Listproduct.Add(product);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = Listproduct,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user name or password"
                });

            }


        }

        [HttpGet]
        [Route("~/api/Reorder")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetReorder()
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                List<TbSalesInvoice> products = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                List<AllsalessVm> Listproduct = new List<AllsalessVm>();
                foreach (var item in products)
                {
                    var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                    var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);

                    var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                    var x = "";
                    var y = "";
                    if (Evaluate != null)
                    {
                        x = Evaluate.StartsNo;
                    }
                    else
                    {
                        x = "0";
                    }
                    if (item.CurrentState == 0)
                    {
                        y = "تم التوصيل الطلب";
                    }
                    else if (item.CurrentState == 1)
                    {
                        y = "تم الشحن الطلب";
                    }
                    else if (item.CurrentState == 2)
                    {
                        y = "تم الغاء الطلب";

                    }
                    else
                    {
                        y = "'طلب جديد";
                    }
                    AllsalessVm allsaless = new AllsalessVm()
                    {
                        SalesInvoiceId = item.SalesInvoiceId,
                        SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                        supplierName = supplier?.SupplierName,
                        ProductName = ProdctInv.ProductName,
                        SupplierEvaluationstarNo = x,
                        CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                        TotalQuntity = "15",
                        status = y,
                        TotalInvoiceAfter = item.TotalInvoiceAfter
                    };
                    Listproduct.Add(allsaless);
                }


                try
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = Listproduct,
                    });
                }
                catch (Exception e)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "invoice not found",
                        Exceptions = "invalid user name or password"
                    });

                }


            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid"
                });

            }




        }


        [HttpGet]
        [Route("~/api/ReorderbyStatus")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetReorderbyStatus(List<int?> Status)
        {
            //return new string[] { "value1", "value2" };
            //  var data = productService.getAll();
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                List<AllsalessVm> Listproduct = new List<AllsalessVm>();
                if (Status.Count == 0)
                {
                    List<TbSalesInvoice> product = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                    List<AllsalessVm> Listproducts = new List<AllsalessVm>();

                    foreach (var item in product)
                    {
                        var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                        var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);

                        var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                        var x = "";
                        var y = "";
                        if (Evaluate != null)
                        {
                            x = Evaluate.StartsNo;
                        }
                        else
                        {
                            x = "0";
                        }
                        if (item.CurrentState == 0)
                        {
                            y = "تم التوصيل الطلب";
                        }
                        else if (item.CurrentState == 1)
                        {
                            y = "تم الشحن الطلب";
                        }
                        else if (item.CurrentState == 2)
                        {
                            y = "تم الغاء الطلب";

                        }
                        else
                        {
                            y = "'طلب جديد";
                        }
                        AllsalessVm allsaless = new AllsalessVm()
                        {
                            SalesInvoiceId = item.SalesInvoiceId,
                            SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                            supplierName = supplier?.SupplierName,
                            ProductName = ProdctInv.ProductName,
                            SupplierEvaluationstarNo = x,
                            CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                            TotalQuntity = "15",
                            status = y,
                            TotalInvoiceAfter = item.TotalInvoiceAfter
                        };
                        Listproducts.Add(allsaless);
                    }


                    try
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "200",
                            Status = true,
                            Message = "Data",
                            data = Listproducts,
                        });
                    }
                    catch (Exception e)
                    {
                        return Ok(new ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "invoice not found",
                            Exceptions = "invalid user name or password"
                        });

                    }
                }
                List<TbSalesInvoice> products = salesInvoiceService.getAll().Where(a => a.CreatedBy == curUser.Id && Status.Contains(a.CurrentState)).ToList();
                // List<AllsalessVm> Listproduct = new List<AllsalessVm>();

                foreach (var item in products)
                {
                    var ProdctInv = Ctx.TbSalesInvoiceProducts.FirstOrDefault(a => a.SalesInvoiceId == item.SalesInvoiceId);
                    var Evaluate = Ctx.TbEvaluationSupplierProducts.FirstOrDefault(a => a.SupplierId == item.SupplierId);

                    var supplier = Ctx.TbSuppliers.FirstOrDefault(a => a.SupplierId == item.SupplierId);
                    var x = "";
                    var y = "";
                    if (Evaluate != null)
                    {
                        x = Evaluate.StartsNo;
                    }
                    else
                    {
                        x = "0";
                    }
                    if (item.CurrentState == 0)
                    {
                        y = "تم التوصيل الطلب";
                    }
                    else if (item.CurrentState == 1)
                    {
                        y = "تم الشحن الطلب";
                    }
                    else if (item.CurrentState == 2)
                    {
                        y = "تم الغاء الطلب";

                    }
                    else
                    {
                        y = "'طلب جديد";
                    }
                    AllsalessVm allsaless = new AllsalessVm()
                    {
                        SalesInvoiceId = item.SalesInvoiceId,
                        SupplierImage = DomainUrl + "Uploads/" + supplier?.SupplierImage,
                        supplierName = supplier?.SupplierName,
                        ProductName = ProdctInv.ProductName,
                        SupplierEvaluationstarNo = x,
                        CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                        TotalQuntity = "15",
                        status = y,
                        TotalInvoiceAfter = item.TotalInvoiceAfter
                    };
                    Listproduct.Add(allsaless);
                }


                try
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = Listproduct,
                    });
                }
                catch (Exception e)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "invoice not found",
                        Exceptions = "invalid user name or password"
                    });

                }




            }
            else
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid"
                });

            }




        }


    }

    public class SupplierProductDistinctComparer : IEqualityComparer<SupplierProductVM>
    {
        public bool Equals(SupplierProductVM x, SupplierProductVM y)
        {
            if (x == null && y == null)
                return true;

            if (x == null || y == null)
                return false;

            return x.SupplierId == y.SupplierId;
        }

        public int GetHashCode(SupplierProductVM obj)
        {
            return obj.SupplierId.GetHashCode();
        }
    }
}
