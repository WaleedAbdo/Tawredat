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
using System.IO;
using Microsoft.AspNetCore.Identity;

namespace TawredatProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ProductCategoryController : Controller
    {
        ProductCategoryService productCategoryService;
        UserManager<ApplicationUser> Usermanager;
        TawredatDbContext ctx;
        public ProductCategoryController(ProductCategoryService ProductCategoryService, TawredatDbContext context, UserManager<ApplicationUser> usermanager)
        {

            productCategoryService = ProductCategoryService;
            ctx = context;
            Usermanager = usermanager;
        }
        [Authorize(Roles = "التجار,Admin,اقسام المنتجات")]
        public async Task<IActionResult> Index()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);

            HomePageModel model = new HomePageModel();
            HomePageModel models = new HomePageModel();
            if (User.Identity.IsAuthenticated && User.IsInRole("التجار"))
            {

                models.lstProductCategories = productCategoryService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                return View(models);

            }
            model.lstProductCategories = productCategoryService.getAll();

            return View(model);


        }




        [HttpPost]
        [Authorize(Roles = "التجار,Admin,اقسام المنتجات")]
        public async Task<IActionResult> Save(TbProductCategory ITEM, int id, List<IFormFile> files)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            if (ITEM.ProductCategoryId == null)
            {
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
                            ITEM.ProductCategoryImage = ImageName;
                        }
                    }





                    var result = productCategoryService.Add(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Product Category Profile successfully Created.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Product Category Profile  Creating.";
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
                            ITEM.ProductCategoryImage = ImageName;
                        }
                    }






                    var result = productCategoryService.Edit(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Product Category Profile successfully Updated.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Product Category Profile  Updating.";
                    }

                }
            }




            HomePageModel model = new HomePageModel();
            model.lstProductCategories = productCategoryService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            return View("Index", model);
        }




        [Authorize(Roles = "التجار,Admin,حذف اقسام المنتجات")]
        public IActionResult Delete(Guid id)
        {

            TbProductCategory oldItem = ctx.TbProductCategories.Where(a => a.ProductCategoryId == id).FirstOrDefault();



            var result = productCategoryService.Delete(oldItem);
            if (result == true)
            {
                TempData[SD.Success] = "Product Category Profile successfully Removed.";
            }
            else
            {
                TempData[SD.Error] = "Error in Product Category Profile  Removing.";
            }

            HomePageModel model = new HomePageModel();
            model.lstProductCategories = productCategoryService.getAll();
            return View("Index", model);



        }



        [Authorize(Roles = "التجار,Admin, اضافة او تعديل اقسام المنتجات")]
        public IActionResult Form(Guid? id)
        {
            TbProductCategory oldItem = ctx.TbProductCategories.Where(a => a.ProductCategoryId == id).FirstOrDefault();
            oldItem = ctx.TbProductCategories.Where(a => a.ProductCategoryId == id).FirstOrDefault();

            return View(oldItem);
        }
    }
}
