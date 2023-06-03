using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace TawredatProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "التجار,مدير مشتريات,Admin,User,الصفحة الرئيسية")]
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Coming()
        {
            return View();
        }
        public IActionResult AccessDenied()
        {
            return View();
        }
    }
}
