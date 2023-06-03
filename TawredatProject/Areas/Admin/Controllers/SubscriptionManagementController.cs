using BL;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using TawredatProject.Models;

namespace TawredatProject.Areas.Admin.Controllers
{

    [Area("Admin")]
    public class SubscriptionManagementController : Controller
    {
        TawredatDbContext ctx;
        
        public SubscriptionManagementController( TawredatDbContext context)
        {

           
            ctx = context;

        }

        public IActionResult Index()
        {
            HomePageModel model = new HomePageModel();
            model.lstSubscriptionRequest = ctx.TbSubscriptionRequest.ToList();
           

            return View(model);
        }
    }
}
