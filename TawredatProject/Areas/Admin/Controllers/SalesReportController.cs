using BL;
using Microsoft.AspNetCore.Mvc;
using TawredatProject.Models;

namespace TawredatProject.Areas.Admin.Controllers
{


    [Area("Admin")]
    public class SalesReportController : Controller
    {
        SalesInvoiceService salesInvoiceService;

        TawredatDbContext ctx;
        public SalesReportController(SalesInvoiceService SalesInvoiceService, TawredatDbContext context)
        {

            salesInvoiceService = SalesInvoiceService;
            ctx = context;

        }
        public IActionResult Index()
        {
            HomePageModel model = new HomePageModel();
            model.lstSalesInvoices = salesInvoiceService.getAll();

            return View(model);

        }
    }
}
