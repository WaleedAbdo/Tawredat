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
using Microsoft.EntityFrameworkCore;

namespace TawredatProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SalesInvoiceController : Controller
    {
        SalesInvoiceService salesInvoiceService;
        SalesInvoiceProductService salesInvoiceProductService;

        TawredatDbContext ctx;
        public SalesInvoiceController(SalesInvoiceService SalesInvoiceService, TawredatDbContext context, SalesInvoiceProductService SalesInvoiceProductService)
        {
            salesInvoiceProductService = SalesInvoiceProductService;

            salesInvoiceService = SalesInvoiceService;
            ctx = context;

        }
        [Authorize(Roles = "Admin,فاتورة البيع")]
        public IActionResult Index()
        {

            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();

            return View(model);


        }
        [Authorize(Roles = "Admin,فاتورة البيع")]
        public IActionResult Adddelievery()
        {

            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();

            return View(model);


        }

        //    [HttpGet]
        //    public IActionResult GetInvoiceDetails(int id)
        //    {
        //        var invoice = dbContext.Invoices.FirstOrDefault(i => i.Id == id); // Replace "Invoices" with your actual DbSet name

        //        if (invoice == null)
        //        {
        //            return NotFound();
        //        }

        //        return PartialView("_InvoiceDetails", invoice);
        //    }
        //}



        [HttpGet("Details/{id}")]
        [Authorize(Roles = "Admin,فاتورة البيع")]
        public IActionResult Details(Guid id)
        {
           // SalesInvoiceId = new Guid("af6565d7-f4ae-44ad-a87a-00edfd06ad89");

            List<TbSalesInvoiceProduct> invoiceProducts = salesInvoiceProductService.getAll().Where(x => x.SalesInvoiceId == id).ToList();
            List<SalesInv> sales=new List<SalesInv>();
            foreach (var invoice in invoiceProducts)
            {
                SalesInv salesIn = new SalesInv()
                {
                    SalesInvoiceId=invoice.SalesInvoiceId,
                    SupplierName=invoice.SupplierName,
                    ProductName=invoice.ProductName,
                    ProductPrice=invoice.ProductPrice,
                    ProductQty=invoice.ProductQty,
                    ProductCategoryName=invoice.ProductCategoryName,
                    TotalProductValue=invoice.TotalProductValue,
                    CreatedDate=invoice.CreatedDate
                };
                sales.Add(salesIn);

            }
          
            return View(sales);


        }

        //[HttpPost]
        //public IActionResult Details()
        //{
          
        //    HomePageModel model = new HomePageModel();
        //    model.lstSalesInvoiceProducts = salesInvoiceProductService.getAll();

        //    return View(model);


        //}




        [HttpPost]
        public async Task<IActionResult> Save(TbSalesInvoice ITEM, int id, List<IFormFile> files)
        {
            if (ITEM.SalesInvoiceId == null)
            {


                if (ModelState.IsValid)
                {
                    //foreach (var file in files)
                    //{
                    //    if (file.Length > 0)
                    //    {
                    //        string ImageName = Guid.NewGuid().ToString() + ".jpg";
                    //        var filePaths = Path.Combine(Directory.GetCurrentDirectory(), @"wwwroot\Uploads", ImageName);
                    //        using (var stream = System.IO.File.Create(filePaths))
                    //        {
                    //            await file.CopyToAsync(stream);
                    //        }
                    //        ITEM.ab = ImageName;
                    //    }
                    //}





                    var result = salesInvoiceService.Add(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Sales Invoice Profile successfully Created.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Sales Invoice Profile  Creating.";
                    }


                }


            }
            else
            {
                if (ModelState.IsValid)
                {
                    //foreach (var file in files)
                    //{
                    //    if (file.Length > 0)
                    //    {
                    //        string ImageName = Guid.NewGuid().ToString() + ".jpg";
                    //        var filePaths = Path.Combine(Directory.GetCurrentDirectory(), @"wwwroot\Uploads", ImageName);
                    //        using (var stream = System.IO.File.Create(filePaths))
                    //        {
                    //            await file.CopyToAsync(stream);
                    //        }
                    //        ITEM.MainConsultingImage = ImageName;
                    //    }
                    //}






                    var result = salesInvoiceService.Edit(ITEM);
                    if (result == true)
                    {
                        TempData[SD.Success] = "Sales Invoice Profile successfully Updated.";
                    }
                    else
                    {
                        TempData[SD.Error] = "Error in Sales Invoice Profile  Updating.";
                    }

                }
            }




            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();
            return View("Index", model);
        }




        [Authorize(Roles = "Admin,حذف فاتورة البيع")]
        public IActionResult Delete(Guid id)
        {

            TbSalesInvoice oldItem = ctx.TbSalesInvoices.Where(a => a.SalesInvoiceId == id).FirstOrDefault();



            var result = salesInvoiceService.Delete(oldItem);
            if (result == true)
            {
                TempData[SD.Success] = "Sales Invoice Profile successfully Removed.";
            }
            else
            {
                TempData[SD.Error] = "Error in Sales Invoice Profile  Removing.";
            }

            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();
            return View("Index", model);



        }



        [Authorize(Roles = "Admin, اضافة او تعديل فاتورة البيع")]
        public IActionResult Form(Guid? id)
        {
            TbSalesInvoice oldItem = ctx.TbSalesInvoices.Where(a => a.SalesInvoiceId == id).FirstOrDefault();
            oldItem = ctx.TbSalesInvoices.Where(a => a.SalesInvoiceId == id).FirstOrDefault();

            return View(oldItem);
        }
    }
}
