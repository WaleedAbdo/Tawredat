using BL;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using TawredatProject.Models;

namespace TawredatProject.Areas.Admin.Controllers
{


    [Area("Admin")]
    public class UsersActivitiesController : Controller
    {
        TawredatDbContext ctx;
        UserManager<ApplicationUser> Usermanager;
        public UsersActivitiesController(UserManager<ApplicationUser> usermanager, TawredatDbContext context)
        {

            Usermanager = usermanager;
            ctx = context;

        }
        public IActionResult Index()
        {
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.ToList();

            return View(model);
        }
        public IActionResult PurchasingManagerList()
        {
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.Where(a=>a.Status== "مدير مشتريات").ToList();

            return View(model);
        }
        public IActionResult SupplierList()
        {
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.Where(a => a.Status == "تاجر").ToList();

            return View(model);
        }
        public IActionResult DoctorList()
        {
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.Where(a => a.Status == "طبيب").ToList();

            return View(model);
        }
        public IActionResult UserList()
        {
            HomePageModel model = new HomePageModel();
            model.UserData = Usermanager.Users.Where(a => a.Status ==null).ToList();

            return View(model);
        }
    }
}
