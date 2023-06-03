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
    public class StoreController : Controller
    {
        StoreService storeService;
        SupplierService supplierService;
        TawredatDbContext ctx;
        UserManager<ApplicationUser> Usermanager;
        public StoreController(StoreService StoreService,
            TawredatDbContext context, SupplierService SupplierService,UserManager<ApplicationUser> usermanager)
        {

            storeService = StoreService;
            ctx = context;
            supplierService = SupplierService;
            Usermanager = usermanager;
        }
        [Authorize(Roles = "التجار,Admin, المخازن")]
        public async Task<IActionResult> Index()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            HomePageModel model = new HomePageModel();
            HomePageModel models = new HomePageModel();
            if (User.Identity.IsAuthenticated && User.IsInRole("التجار"))
            {

                models.lsStore = storeService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
                return View(models);

            }
            model.lsStore = storeService.getAll();

            return View(model);


        }
        [Authorize(Roles = "التجار,Admin, المخازن")]
        public async Task<IActionResult> StorebyUserId()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            //  var x = productService.getAll().ToList();
            List<TbStore> stores = storeService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            List<StoreVM> Liststore = new List<StoreVM>();

            foreach (var item in stores)
            {
                StoreVM vM = new StoreVM()
                {
                    //ProductId = item.ProductId,
                    StoreName = item.StoreName,
                    SupplierName = item.SupplierName,
                    StoreDescription = item.StoreDescription,
                 
                  

                };

                Liststore.Add(vM);


            }

            return View(Liststore);
        }
        [Authorize(Roles = "التجار,Admin, المخازن")]
        public async Task<IActionResult> Store()
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            //  var x = productService.getAll().ToList();
            List<TbStore> stores = storeService.getAll().ToList();
            List<StoreVM> Liststore = new List<StoreVM>();

            foreach (var item in stores)
            {
                StoreVM vM = new StoreVM()
                {
                    //ProductId = item.ProductId,
                    StoreName = item.StoreName,
                    SupplierName = item.SupplierName,
                    StoreDescription = item.StoreDescription,



                };

                Liststore.Add(vM);


            }

            return View(Liststore);
        }



        [HttpPost]
        public async Task<IActionResult> Save(TbStore ITEM, int id, List<IFormFile> files)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            try
            {
                if (ITEM.StoreId == null)
                {
                    ITEM.SupplierName = supplierService.getAll().Where(a => a.SupplierId == ITEM.SupplierId).FirstOrDefault().SupplierName;
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
                                ITEM.StoreImage = ImageName;
                            }
                        }
                        var result = storeService.Add(ITEM);
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
                                ITEM.StoreImage = ImageName;
                            }
                        }

                        var result = storeService.Edit(ITEM);
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

            }
            catch (Exception ex)
            {
               // return ex.Message

            }



            HomePageModel model = new HomePageModel();
            model.lsStore = storeService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
           
            return View("Index", model);



        }




        [Authorize(Roles = "Admin,حذف المخزن")]
        public IActionResult Delete(Guid id)
        {

            TbStore oldItem = ctx.TbStores.Where(a => a.StoreId == id).FirstOrDefault();



            var result = storeService.Delete(oldItem);
            if (result == true)
            {
                TempData[SD.Success] = "Product Category Profile successfully Removed.";
            }
            else
            {
                TempData[SD.Error] = "Error in Product Category Profile  Removing.";
            }

            HomePageModel model = new HomePageModel();
            model.lsStore = storeService.getAll();
            return View("Index", model);



        }



        [Authorize(Roles = "التجار,Admin, اضافة او تعديل المخزن")]
        public async Task<IActionResult> Form(Guid? id)
        {
            var curUser = await Usermanager.GetUserAsync(HttpContext.User);
            TbStore oldItem = ctx.TbStores.Where(a => a.StoreId == id).FirstOrDefault();
            oldItem = ctx.TbStores.Where(a => a.StoreId == id).FirstOrDefault();
            ViewBag.Suppliers = supplierService.getAll().Where(a => a.CreatedBy == curUser.Id).ToList();
            
            return View(oldItem);
        }
    }
}
