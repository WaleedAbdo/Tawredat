using BL;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MimeKit.Utils;
using System;
using System.Linq;
using TawredatProject.Models;

namespace TawredatProject.Areas.Admin.Controllers
{


    [Area("Admin")]
    public class SalesReportController : Controller
    {
        SalesInvoiceService salesInvoiceService;
        UserManager<ApplicationUser> Usermanager;
        TawredatDbContext ctx;
        public SalesReportController(SalesInvoiceService SalesInvoiceService, TawredatDbContext context, UserManager<ApplicationUser> usermanager)
        {

            salesInvoiceService = SalesInvoiceService;
            ctx = context;
            Usermanager = usermanager;
        }
        public IActionResult Index()
        {
            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();

            return View(model);

        }
        public IActionResult SalesDoctor()
        {
            var curUser = Usermanager.GetUserAsync(HttpContext.User);
            var ListUser= ctx.Users.Where(a=>a.CreatedBy==curUser.Result.Id).Select(s => s.Id).ToList();
            
            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll().Where(x => ListUser.Any(l => l == x.CreatedBy)).ToList();

            return View(model);

        }
        public IActionResult DoctorLists()
        {
            var curUser = Usermanager.GetUserAsync(HttpContext.User);
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.Where(a => a.Status == "طبيب" && a.CreatedBy == curUser.Result.Id).ToList();

            return View(model);
        }

        public IActionResult SalesDaily()
        {
            DateTime currentDate = DateTime.UtcNow.Date;
            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll().Where(a=>a.CreatedDate.Value.Date== currentDate);

            return View(model);

        }
        public IActionResult SalesSupplier()
        {
            var curUser = Usermanager.GetUserAsync(HttpContext.User);
            var ListUser = ctx.TbSuppliers.Where(a => a.CreatedBy == curUser.Result.Id).Select(s => s.SupplierId).ToList();

            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll().Where(x => ListUser.Any(l => l == x.SupplierId)).ToList();

            return View(model);

        }
    }
}
