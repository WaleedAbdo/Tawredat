using BL;
using Domains;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System;
using System.Linq;
using TawredatProject.Models;
using TawredatProject.Services;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace TawredatProject.Areas.Admin.Controllers
{


    [Area("Admin")]
    public class MostSearchedProductsController : Controller
    {
        ProductService productService;
        TawredatDbContext Ctx;
        private readonly IConfiguration _configuration;
        UserManager<ApplicationUser> Usermanager;
        public MostSearchedProductsController(ProductService ProductService,
            IConfiguration config, TawredatDbContext Context, UserManager<ApplicationUser> usermanager)
        {
            productService = ProductService;
            _configuration = config;
            Ctx = Context;
            Usermanager = usermanager;
        }
        public IActionResult Index()
        {
            //  var x = productService.getAll().ToList();
            List<TbProduct> products = productService.getAll();
            List<productReport> Listproduct = new List<productReport>();

            foreach (var item in products)
            {
                productReport product = new productReport()
                {
                    //ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    ProductDescription = item.ProductDescription,
                    ProductCategoryName = item.ProductCategoryName,
                    StoreName = item.StoreName,
                    Quantity = item.Quantity,
                    ProductPrice = item.ProductPrice,
                    DiscountPercent = item.DiscountPercent,
                    ProductNewPrice = item.ProductNewPrice,
                    StartDate=item.StartDate,
                    EndDate=item.EndDate,
                    //ProductImage= item.ProductImage,
                    
                };

                Listproduct.Add(product);


            }




            return View(Listproduct);
        }
        public async Task<IActionResult> produtbyUserId()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            //  var x = productService.getAll().ToList();
            List<TbProduct> products = productService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            List<productReport> Listproduct = new List<productReport>();

            foreach (var item in products)
            {
                productReport product = new productReport()
                {
                    //ProductId = item.ProductId,
                    ProductName = item.ProductName,
                    ProductDescription = item.ProductDescription,
                    ProductCategoryName = item.ProductCategoryName,
                    StoreName = item.StoreName,
                    Quantity = item.Quantity,
                    ProductPrice = item.ProductPrice,
                    DiscountPercent = item.DiscountPercent,
                    ProductNewPrice = item.ProductNewPrice,
                    StartDate = item.StartDate,
                    EndDate = item.EndDate,
                    //ProductImage= item.ProductImage,

                };

                Listproduct.Add(product);


            }

            return View(Listproduct);
        }
        public async Task<IActionResult> CountProduct ()
        {
            var count = await Ctx.TbProducts.CountAsync();

            ViewBag.ProductCount = count;

            return View();
        }
       

    }
}
