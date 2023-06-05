using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

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
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> LogOff()
        //{
        //    await _signInManager.SignOutAsync();
        //    return RedirectToAction(nameof(HomeController.Index), "Home");
        //}
    }
}
