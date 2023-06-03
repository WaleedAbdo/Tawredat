using Microsoft.AspNetCore.Mvc;

namespace TawredatProject.Areas.Admin.Controllers
{

    [Area("Admin")]
    public class PurchaseBranchUserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
