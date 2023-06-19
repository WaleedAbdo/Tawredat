using BL;
using Google.Apis.Auth.OAuth2;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

using RestSharp;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;
using TawredatProject.Services;


namespace TawredatProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserRegistrationController : ControllerBase

    {
        UserManager<ApplicationUser> Usermanager;
        private readonly SignInManager<ApplicationUser> signInManager;
        private readonly IAccountRepository _accountRepository;
        private readonly IIdentityService _identity;
        private readonly ISMSService _smsService;
        private readonly AddressService addressService;
        private readonly ChargeService chargeService;

        TawredatDbContext _context;
        CityService cityService;
        public UserRegistrationController(UserManager<ApplicationUser> usermanager,
            SignInManager<ApplicationUser> signInManager, IAccountRepository accountRepository,
            IIdentityService identity, CityService CityService, ISMSService smsService,
            TawredatDbContext Context, AddressService AddressService, ChargeService ChargeService)
        {
            _accountRepository = accountRepository;
            Usermanager = usermanager;
            this.signInManager = signInManager;
            _identity = identity;
            cityService = CityService;
            chargeService = ChargeService;
            _smsService = smsService;
            _context = Context;
            addressService = AddressService;
        }

        [HttpPost("signup")]
        [Route("~/UserRegistration/SignUp")]
        public async Task<IActionResult> SignUp(RegistrationVM model)
        {


            var UserName = Usermanager.Users.FirstOrDefault(a => a.UserName == model.UserName);
            if (UserName == null)
            {

                var curUser = Usermanager.Users.FirstOrDefault(a => a.PhoneNumber == model.PhoneNumber);
                if (curUser == null)
                {
                    var userEmail = Usermanager.Users.FirstOrDefault(a => a.Email == model.Email);
                    if (userEmail == null)
                    {

                        string Phonenumber = model.PhoneNumber;
                        string otp = ETALogin(model.PhoneNumber);

                        // var otp = Phonenumber.Substring(Phonenumber.Length - 4, 4);
                        var user = new ApplicationUser()
                        {
                            UserName = model.UserName,
                            PhoneNumber = model.PhoneNumber,
                            Email = model.Email,
                            IsAgree = model.IsAgree,
                            IsActive = false,
                            Status = "User",
                            EmailConfirmed = true,
                            CreatedBy = "",
                            CreatedDate = System.DateTime.Now,
                            CurrentState = 1,
                            UpdatedBy = "",
                            Notes = "bycurrentuserlogin",
                            //OTP = otp

                        };
                        var result = await Usermanager.CreateAsync(user, model.Password);

                        //var found = await Usermanager.fi
                        if (result.Succeeded)
                        {
                            var userData = await Usermanager.FindByEmailAsync(user.Email);
                            return Ok(new Helpers.ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم انشاء حساب بنجاح",
                                data = new { UserId = userData.Id, OTP = userData.OTP }
                            });
                        }
                        else
                        {
                            return Ok(new Helpers.ApiResponse<IEnumerable<IdentityError>>()
                            {
                                Code = "409",
                                Status = false,
                                Message = "حدث خطأ اثناء انشاء الحساب",
                                Exceptions = result.Errors
                            });
                        }
                    }
                    else
                    {
                        return Ok(new Helpers.ApiResponse<object>()
                        {
                            Code = "409",
                            Status = false,
                            Message = "الحساب مستخدم من قبل",
                            data = new { Email = model.Email }
                        });

                    }
                }
                else
                {

                    return Ok(new Helpers.ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "رقم الهاتف  مستخدم من قبل",
                        data = new { PhoneNumber = model.PhoneNumber }
                    });

                }
            }
            else
            {
                return Ok(new Helpers.ApiResponse<object>()
                {
                    Code = "409",
                    Status = false,
                    Message = "الاسم مستخدم من قبل",
                    data = new { userName = model.UserName }
                });

            }

        }
        [Route("api/EInvoice/ETALogin")]
        [HttpPost]
        public string ETALogin(string phoneNumber)
        {

            



            var client = new RestClient("https://apis.deewan.sa/mfa/v2/verifications");
            var request = new RestRequest(Method.POST);
            request.AddHeader("accept", "application/json");
            request.AddHeader("content-type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImM3ZGIyNGE5MjVmOTQyZjk3YTM2OTNmNDY0NDk2MGE1YWRhMDAyNmZhZTdhM2E2NzhjYjU2NzM3NDIxZWFlNjEiLCJpYXQiOjE2ODY3NjAyNDcsImV4cCI6MzI2NDY0MDI0N30.jMABkzBwmCOM7O3QnnMXh0NSlCNIB4QxpMOw5vf-qFY");
            request.AddParameter("application/json", "{\"channel\":\"SMS\",\"recipientIdentifier\":\"" + phoneNumber + "\",\"templateCode\":\"55565d0d-4e4c-4524-857c-18af25e765e6\"}", ParameterType.RequestBody);

            IRestResponse response = client.Execute(request);
            if (response.IsSuccessful)
            {
                return response.Content;
            }
            else
            {
                return response.Content;

            }



           // return Ok(JsonConvert.SerializeObject(response.Content, Formatting.Indented));

           
        }



        public string CheckOTP(string OtP, string chechCode)
        {
            var client = new RestClient("https://apis.deewan.sa/mfa/v2/verifications");
            var request = new RestRequest(Method.PUT);
            request.AddHeader("accept", "application/json");
            request.AddHeader("content-type", "application/json");
            request.AddHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImM3ZGIyNGE5MjVmOTQyZjk3YTM2OTNmNDY0NDk2MGE1YWRhMDAyNmZhZTdhM2E2NzhjYjU2NzM3NDIxZWFlNjEiLCJpYXQiOjE2ODY3NjAyNDcsImV4cCI6MzI2NDY0MDI0N30.jMABkzBwmCOM7O3QnnMXh0NSlCNIB4QxpMOw5vf-qFY");
            request.AddParameter("application/json", "{\"checkCode\":\"" + chechCode + "\",\"otpPasscode\":\"" + OtP + "\"}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            return response.Content;
        }
    }
}
