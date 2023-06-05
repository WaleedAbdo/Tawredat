using BL;
using Domains;
using Google.Apis.Admin.Directory.directory_v1.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using TawredatProject.Models;
using Microsoft.AspNetCore.Authorization;

namespace TawredatProject.Areas.Admin.Controllers
{

    [Area("Admin")]
    public class SubscriptionManagementController : Controller
    {
        TawredatDbContext ctx;
        RequestService requestService;
        public SubscriptionManagementController( TawredatDbContext context, RequestService RequestService)
        {

            requestService = RequestService;
             ctx = context;

        }
        [Authorize(Roles = "Admin,فاتورة البيع")]
        public IActionResult Index()
        {
            List<TbSubscriptionRequest> tbSubscriptions = ctx.TbSubscriptionRequest.ToList();
            List<RequestVM>  subscriptions = new List<RequestVM>();
            foreach (var subscription in tbSubscriptions)
            {
                RequestVM model = new RequestVM()
                {
                    SubscriberName=subscription.SubscriberName,
                    PhoneNumber=subscription.PhoneNumber,
                    Email=subscription.Email,
                    ClinicName=subscription.ClinicName,
                    CityName=subscription.CityName,
                    CreatedDate=subscription.CreatedDate,


                };
                subscriptions.Add(model);

            }

          
            return View(subscriptions);
        }

    }
}
