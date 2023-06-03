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
    public class SupplierController : Controller
    {
        SupplierCategoryService supplierCategoryService;
        SupplierService supplierService;
        CityService cityService;
        UserManager<ApplicationUser> Usermanager;
        TawredatDbContext ctx;
        public SupplierController(SupplierCategoryService SupplierCategoryService,
            CityService CityService,SupplierService SupplierService, 
            TawredatDbContext context, UserManager<ApplicationUser> usermanager)
        {
            supplierCategoryService = SupplierCategoryService;
            supplierService = SupplierService;
            ctx = context;
            cityService = CityService;
            Usermanager = usermanager;
        }
        [Authorize(Roles = "Admin,التجار")]
        public async Task<IActionResult> Index()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);

            HomePageModel model = new HomePageModel();
            HomePageModel models = new HomePageModel();
            if (User.Identity.IsAuthenticated && User.IsInRole("التجار"))
            {

                models.lstSuppliers = supplierService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                return View(models);

            }
            model.lstSuppliers = supplierService.getAll();

            return View(model);


        }
        [Authorize(Roles = "Admin,التجار")]
        public async Task<IActionResult> SupplierbyUserId()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            //  var x = productService.getAll().ToList();
            List<TbSupplier> Suppliers = supplierService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            List<SupplierReport> ListSupplier = new List<SupplierReport>();

            foreach (var item in Suppliers)
            {
                SupplierReport  supplier = new SupplierReport()
                {
                    SupplierName=item.SupplierName,
                    SupplierCityName=item.SupplierCityName,
                    CustomersNumber=item.CustomersNumber,
                    //ProductId = item.ProductId,
                   
                    //ProductImage= item.ProductImage,

                };

                ListSupplier.Add(supplier);


            }

            return View(ListSupplier);
        }
        [Authorize(Roles = "Admin,التجار")]
        public async Task<IActionResult> Supplier()
        {
            //var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            //  var x = productService.getAll().ToList();
            List<TbSupplier> Suppliers = supplierService.getAll().ToList();
            List<SupplierReport> ListSupplier = new List<SupplierReport>();

            foreach (var item in Suppliers)
            {
                SupplierReport supplier = new SupplierReport()
                {
                    SupplierName = item.SupplierName,
                    SupplierCityName = item.SupplierCityName,
                    CustomersNumber = item.CustomersNumber,
                    //ProductId = item.ProductId,

                    //ProductImage= item.ProductImage,

                };

                ListSupplier.Add(supplier);


            }

            return View(ListSupplier);
        }





        [HttpPost]
        public async Task<IActionResult> Save(TbSupplier ITEM, int id, List<IFormFile> files)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            if (ITEM.SupplierId == null)
            {
                ITEM.SupplierCityName = cityService.getAll().Where(a => a.CityId == ITEM.SupplierCityId).FirstOrDefault().CityName;
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
                            ITEM.SupplierImage = ImageName;
                        }
                    }





                    var result = supplierService.Add(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Supplier Profile successfully Created.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Supplier Profile  Creating.";
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
                            ITEM.SupplierImage = ImageName;
                        }
                    }






                    var result = supplierService.Edit(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Supplier Profile successfully Updated.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Supplier Profile  Updating.";
                    }

                }
            }




            HomePageModel model = new HomePageModel();
            model.lstSuppliers = supplierService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            
            return View("Index", model);
        }




        [Authorize(Roles = "Admin,حذف التجار")]
        public IActionResult Delete(Guid id)
        {

            TbSupplier oldItem = ctx.TbSuppliers.Where(a => a.SupplierId == id).FirstOrDefault();



            var result = supplierService.Delete(oldItem);
            if (result == true)
            {
                TempData[SD.Success] = "Supplier Profile successfully Removed.";
            }
            else
            {
                TempData[SD.Error] = "Error in Supplier Profile  Removing.";
            }

            HomePageModel model = new HomePageModel();
            model.lstSuppliers = supplierService.getAll();
            return View("Index", model);



        }



        [Authorize(Roles = "التجار,Admin, اضافة او تعديل التجار")]
        public async Task<IActionResult> Form(Guid? id)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            TbSupplier oldItem = ctx.TbSuppliers.Where(a => a.SupplierId == id).FirstOrDefault();
            oldItem = ctx.TbSuppliers.Where(a => a.SupplierId == id).FirstOrDefault();
            ViewBag.cities = cityService.getAll();
            ViewBag.SuppliersCategories = supplierCategoryService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            return View(oldItem);
        }
    }
}
