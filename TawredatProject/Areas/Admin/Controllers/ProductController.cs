using BL;
using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System;
using TawredatProject.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using System.IO;

namespace TawredatProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ProductController : Controller
    {
        ProductService productService;
        ProductCategoryService productCategoryService;
        StoreService storeService;
        TawredatDbContext ctx;
        UserManager<ApplicationUser> Usermanager;

        public ProductController(ProductCategoryService ProductCategoryService,
            ProductService ProductService, StoreService StoreService, TawredatDbContext context, UserManager<ApplicationUser> usermanager)
        {

            productService = ProductService;
            storeService = StoreService;
            ctx = context;
            productCategoryService = ProductCategoryService;
            Usermanager = usermanager;
        }
        [Authorize(Roles = "التجار,Admin,المنتجات")]
        public async Task<IActionResult> Index()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            HomePageModel model = new HomePageModel();
            HomePageModel models = new HomePageModel();
           
            if (User.Identity.IsAuthenticated && User.IsInRole("التجار"))
            {

                models.lstProducts = productService.getAll().Where(a=>a.CreatedBy==curUser.Id).ToList();
                return View(models);

            }
            model.lstProducts = productService.getAll();
            return View(model);


        }




        [HttpPost]
        [Authorize(Roles = "التجار,Admin,المنتجات")]
        public async Task<IActionResult> Save(TbProduct ITEM, int id, List<IFormFile> files)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            if (ITEM.ProductId == null)
            {
                ITEM.ProductCategoryName = productCategoryService.getAll().Where(a => a.ProductCategoryId == ITEM.ProductCategoryId).FirstOrDefault().ProductCategoryName;
                ITEM.StoreName = storeService.getAll().Where(a=>a.StoreId==ITEM.StoreId).FirstOrDefault().StoreName;
                ITEM.CreatedBy = curUser.Id;
                if (ModelState.IsValid)
                {
                    foreach (var file in files)
                    {
                        if (file.Length > 0)
                        {
                            string ImageName = Guid.NewGuid().ToString() + ".jpg";
                            var filePaths = Path.Combine(Directory.GetCurrentDirectory(), @"wwwroot\Uploads", ImageName);
                            using (var stream = System.IO.File.Create(filePaths))
                            {
                                await file.CopyToAsync(stream);
                            }
                            ITEM.ProductImage = ImageName;
                        }
                    }


                    if (ITEM.DiscountPercent!=null) 
                    {
                        int newPrice = int.Parse(ITEM.ProductPrice) - ((int.Parse(ITEM.ProductPrice) * int.Parse(ITEM.DiscountPercent)) / 100);
                        ITEM.ProductNewPrice = newPrice.ToString();
                    }
                  


                    var result = productService.Add(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Product Profile successfully Created.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Product Profile  Creating.";
                    }


                }


            }
            else
            {
                if (ModelState.IsValid)
                {
                    foreach (var file in files)
                    {
                        if (file.Length > 0)
                        {
                            string ImageName = Guid.NewGuid().ToString() + ".jpg";
                            var filePaths = Path.Combine(Directory.GetCurrentDirectory(), @"wwwroot\Uploads", ImageName);
                            using (var stream = System.IO.File.Create(filePaths))
                            {
                                await file.CopyToAsync(stream);
                            }
                            ITEM.ProductImage = ImageName;
                        }
                    }



                    if (ITEM.DiscountPercent != null)
                    {
                        int newPrice = int.Parse(ITEM.ProductPrice) - ((int.Parse(ITEM.ProductPrice) * int.Parse(ITEM.DiscountPercent)) / 100);
                        ITEM.ProductNewPrice = newPrice.ToString();
                    }


                    var result = productService.Edit(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Product Profile successfully Updated.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Product Profile  Updating.";
                    }

                }
            }




            HomePageModel model = new HomePageModel();
            model.lstProducts = productService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            return View("Index", model);
        }




        [Authorize(Roles = "Admin,حذف المنتجات")]
        public IActionResult Delete(Guid id)
        {

            TbProduct oldItem = ctx.TbProducts.Where(a => a.ProductId == id).FirstOrDefault();



            var result = productService.Delete(oldItem);
            if (result == true)
            {
                TempData[SD.Success] = "Product Profile successfully Removed.";
            }
            else
            {
                TempData[SD.Error] = "Error in Product Profile  Removing.";
            }

            HomePageModel model = new HomePageModel();
            model.lstProducts = productService.getAll();
            return View("Index", model);



        }



        [Authorize(Roles = "التجار,Admin, اضافة او تعديل المنتجات")]
        public async Task<IActionResult> Form(Guid? id)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            TbProduct oldItem = ctx.TbProducts.Where(a => a.ProductId == id).FirstOrDefault();
            oldItem = ctx.TbProducts.Where(a => a.ProductId == id).FirstOrDefault();
            ViewBag.cities = productCategoryService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
          
            ViewBag.Stors = storeService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
          
            return View(oldItem);
        }
    }
}
