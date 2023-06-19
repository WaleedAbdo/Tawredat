
using BL;
using Domains;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using RestSharp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web.Helpers;
using TawredatProject;
using TawredatProject.Controllers;
using TawredatProject.Dtos;
using TawredatProject.Helpers;
using TawredatProject.Models;
using TawredatProject.Services;
using Twilio.Jwt.AccessToken;
using Twilio.Types;
using static System.Net.WebRequestMethods;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AlMohamyProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserLogInApiController : ControllerBase
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
        public UserLogInApiController(UserManager<ApplicationUser> usermanager,
            SignInManager<ApplicationUser> signInManager, IAccountRepository accountRepository,
            IIdentityService identity, CityService CityService,ISMSService smsService,
            TawredatDbContext Context, AddressService AddressService,ChargeService ChargeService)
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

        [HttpPost("forget")]
        public async Task<IActionResult> forget([FromForm] ForgotPasswordViewModel forgetModel)
        {

            var result = await _accountRepository.ForgotPassword(forgetModel);

            if (result == null)
            {
                return BadRequest("اضف الرقم مرة ثانية");

            }
            return Ok(result);

        }
        [HttpPost("reset")]
        public async Task<IActionResult> reset([FromForm] ResetViewPageModel forgetModel)
        {


            var result = await _accountRepository.ResetPassword(forgetModel.UserId, forgetModel.codeToken, forgetModel.Password);

            if (result != "Succeded")
            {
                return BadRequest("Enter Password Again");

            }
            return Ok("تم اعادة الرقم السري");

        }


        [HttpPost("PhoneCon")]
        public async Task<IActionResult> PhoneCon([FromForm] SignUpModel signUpModel)
        {
            var result = await _accountRepository.pHONEcON(signUpModel);

            if (result == "wrong code")
            {
                return Unauthorized();

            }
            return Ok(result);

        }
        
        [HttpPost("signup")]
       // [Route("~/api/SignUp")]
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
                        //string otp = ETALogin(model.PhoneNumber);
                        string Phonenumber = model.PhoneNumber;
                      
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
                            // OTP = otp

                        };
                        var result = await Usermanager.CreateAsync(user, model.Password);

                        //var found = await Usermanager.fi
                        if (result.Succeeded)
                        {
                            var userData = await Usermanager.FindByEmailAsync(user.Email);
                            return Ok(new ApiResponse<object>()
                            {
                                Code = "200",
                                Status = true,
                                Message = "تم انشاء حساب بنجاح",
                                data = new { UserId = userData.Id, OTP = userData.OTP }
                            });
                        }
                        else
                        {
                            return Ok(new ApiResponse<IEnumerable<IdentityError>>()
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
                        return Ok(new ApiResponse<object>()
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

                    return Ok(new ApiResponse<object>()
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
                return Ok(new ApiResponse<object>()
                {
                    Code = "409",
                    Status = false,
                    Message = "الاسم مستخدم من قبل",
                    data = new { userName = model.UserName }
                });
             
            }

        }

        //[Route("api/EInvoice/ETALogin")]
        //[HttpPost]
        //public string ETALogin(string phoneNumber)
        //{





        //    var client = new RestClient("https://apis.deewan.sa/mfa/v2/verifications");
        //    var request = new RestRequest(Method.POST);
        //    request.AddHeader("accept", "application/json");
        //    request.AddHeader("content-type", "application/json");
        //    request.AddHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImM3ZGIyNGE5MjVmOTQyZjk3YTM2OTNmNDY0NDk2MGE1YWRhMDAyNmZhZTdhM2E2NzhjYjU2NzM3NDIxZWFlNjEiLCJpYXQiOjE2ODY3NjAyNDcsImV4cCI6MzI2NDY0MDI0N30.jMABkzBwmCOM7O3QnnMXh0NSlCNIB4QxpMOw5vf-qFY");
        //    request.AddParameter("application/json", "{\"channel\":\"SMS\",\"recipientIdentifier\":\"" + phoneNumber + "\",\"templateCode\":\"55565d0d-4e4c-4524-857c-18af25e765e6\"}", ParameterType.RequestBody);

        //    IRestResponse response = client.Execute(request);
        //    if (response.IsSuccessful)
        //    {
        //        return response.Content;
        //    }
        //    else
        //    {
        //        return response.Content;

        //    }



        //    // return Ok(JsonConvert.SerializeObject(response.Content, Formatting.Indented));


        //}

        [Authorize]
        [AllowAnonymous]
        [HttpGet("my-protected-endpoint")]
        public IActionResult MyProtectedEndpoint()
        {
            var authorizationHeader = HttpContext.Request.Headers["Authorization"].FirstOrDefault();

            if (authorizationHeader != null && authorizationHeader.StartsWith("Bearer "))
            {
                var token = authorizationHeader.Substring("Bearer ".Length).Trim();
                // Use token in your logic
                return Ok("Bearer token received and validated");
            }

            return Unauthorized();
        }

        
        
      



        [HttpPost("login")]
       // [Route("~/api/SignIn")]
        public async Task<IActionResult> Login(LoginVM login)
        {

            var user = await _accountRepository.FindByPhoneNumbaer(login.PhoneNumber);
            if (user == null)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "المستخدم غير موجود",
                    Exceptions = "رقم الهاتف غير صحيح"
                });

            }
            var result = await signInManager.PasswordSignInAsync(user, login.Password, login.RememberMe, false);

            var Token = await _identity.GenerateToken(user);
         
            if (result.Succeeded)
            {
                if (user.IsActive == true)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم تسجيل الدخول بنجاح والتفعيل",
                        data = new
                        {
                            userId = user.Id,
                            userName = user.UserName,
                            email = user.Email,
                            phone = user.PhoneNumber,
                            cityId = user.CityId,
                            city = user.CityName,
                            isActive = user.IsActive,
                            // OTP= otp,
                            token = Token
                        }
                    });
                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم تسجيل الدخول بنجاح",
                        data = new
                        {
                            userId = user.Id,
                            userName = user.UserName,
                            email = user.Email,
                            phone = user.PhoneNumber,
                            cityId = user.CityId,
                            city = user.CityName,
                            isActive = user.IsActive,
                             OTP= user.OTP,
                            token = Token
                        }
                    });
                }
              
            }
            else
            {

                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "كلمة السر غير صحيحة",
                    Exceptions = "result.Errors"
                });
            }

        }

        [HttpPost("FindUser")]
     //  [Route("~/api/FindUser")]
        public async Task<IActionResult> FindUser(UserPhoneNumberVM phoneNumber)
        {

            var user = await _accountRepository.FindByPhoneNumbaer(phoneNumber.PhoneNumber);

            

            if (user!= null)
            {
                //var Token = await Usermanager.GenerateEmailConfirmationTokenAsync(user);
                var Token = await _identity.GenerateToken(user);

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "has been sent",
                    data = new
                    {
                        userId = user.Id,
                        userName = user.UserName,
                        email = user.Email,
                        phone = user.PhoneNumber,
                        cityId = user.CityId,
                        city = user.CityName,
                        isActive = user.IsActive,
                        OTP=user.OTP,
                        token = Token
                    }
                });
            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "مستخدم غير موجود",
                    Exceptions = "رقم الهاتف غير صحيح"
                });
            }

        }

        [HttpPost("FindOTP")]
     
        public async Task<IActionResult> FindOTP(UserOTPVM OTP)
        {

            var user = await _accountRepository.FindByOTPNumber(OTP.OTP,OTP.PhoneNumber);
          //  var usernumber = await _accountRepository.FindByPhoneNumbaer(OTP.PhoneNumber);

        

                if (user != null)
                {
                //var Token = await Usermanager.GenerateEmailConfirmationTokenAsync(user);
                     user.IsActive = true;
                    var result = await Usermanager.UpdateAsync(user);
                  if (result.Succeeded)
                  {
                    var Token = await _identity.GenerateToken(user);

                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "مطابق ومفعل",
                        data = new
                        {
                            userId = user.Id,
                            token = Token,
                            IsActive = user.IsActive
                        }
                    });
                  }
                  else
                  {
                    return Ok(new ApiResponse<string>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "غير مفعل",
                        Exceptions = "invalid"
                    });

                }
                }
                else
                {

                    return Ok(new ApiResponse<string>()
                    {
                        Code = "404",
                        Status = false,
                        Message = "غير مطابق",
                        Exceptions = "invalid"
                    });
                }
            
            
        }

        [HttpPost("ResetPassword")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> ResetPasswordAsync(UserNewPasswordVM NewPassword)
        {
            // string Token = "";
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);       
            // var Token = await _identity.GenerateToken(curUser);

            await Usermanager.RemovePasswordAsync(curUser);
            var result = await Usermanager.AddPasswordAsync(curUser, NewPassword.NewPassword);

            //var result = await _identity.ResetPasswordAsync(curUser, Token, NewPassword);

            if (result.Succeeded)
            {
                var Token = _identity.GenerateToken(curUser);
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم اعادة كلمة السر بنجاح",
                    data = new
                    {
                        userId = curUser.Id,
                        userName = curUser.UserName,
                        email = curUser.Email,
                        phone = curUser.PhoneNumber,
                        cityId = curUser.CityId,
                        city = curUser.CityName,
                        isActive = curUser.IsActive,
                        token = Token
                    }
                });
            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "مستخدم غير موجود",
                    Exceptions = "كلمة السر او المستخدم غير صحيح"
                });
            }

        }
        [HttpPost("ChangPassword")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> ChangPassword(ChangePasswordVM change)
        {
            // string Token = "";
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
               // await Usermanager.RemovePasswordAsync(curUser);
                var result = await Usermanager.ChangePasswordAsync(curUser,change.OldPassword, change.NewPassword);

                //curUser.PasswordHash = change.NewPassword;
               // var result = await Usermanager.UpdateAsync(curUser);
                if (result.Succeeded)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم تغيير كلمة السر بنجاح",
                        data = new
                        {

                            userId = curUser.Id
                        }
                    });
                }
                else
                {
                    return Ok(new ApiResponse<string>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "كلمة السر القديمة غير صحيحة",
                        // Exceptions = "invalid OTP"
                    });
                }



            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "المستخدم غير موجود",
                    Exceptions = "invalid user"
                });
            }

        }


        // GET: api/<UserLogInApiController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }
        [HttpGet]
        [Route("~/api/current")]
        //public
        // GET api/<UserLogInApiController>/5
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> StartSession()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            //return Ok(curUser.Id);
            if (curUser != null)
            {
            
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Done",
                    data = new
                    {
                        UserId=curUser.Id,
                        FirstName = curUser.FirstName,
                        FamilyName = curUser.FamilyName,
                        PhoneNumber = curUser.PhoneNumber,
                        Email=curUser.Email,
                        CityName = curUser.CityName,

                        
                    }
                });
            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid token"
                });
            }

        }
        [HttpGet("{id}")]
        public ApplicationUser Get(string id)
        {
            return Usermanager.Users.Where(a => a.Id == id).FirstOrDefault();
        }

        // POST api/<UserLogInApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<UserLogInApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {

        }
        [HttpPost]
        [Route("~/EditUserProfile")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> EditUserProfile([FromBody] ProfileMV u)
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

            //  var Userid = User.FindFirstValue( Claim);
            if (curUser != null)
            {
                curUser.Email = u.Email;
                curUser.FirstName = u.FirstName;
                curUser.FamilyName = u.FamilyName;
                curUser.PhoneNumber = u.PhoneNumber;
                var result = await Usermanager.UpdateAsync(curUser);
                if (result.Succeeded)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم تعديل البيانات بنجاح",
                        data = new
                        {

                           userId = curUser.Id,
                           Email= curUser.Email,
                           FirstName = curUser.FirstName,
                           FamilyName = curUser.FamilyName,
                           PhoneNumber = curUser.PhoneNumber,
                           CityName=curUser.CityName

                        }
                    });
                }
                else
                {
                    return Ok(new ApiResponse<string>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "حدث خطأاثناء التعديل",
                       // Exceptions = "invalid OTP"
                    });
                }


                
            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user"
                });
            }
            //var user = await Usermanager.FindByEmailAsync();
        }
        [HttpPost]
        [Route("~/AddUserAddress")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> addAddressProfile([FromBody] MyaddressAddVM u)
        {

             try
             {
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

                var cityName = cityService.getAll().FirstOrDefault(a => a.CityId == u.CityId);
                TbAddress tb = new TbAddress()
                {
                    Id=curUser.Id,
                    Name=curUser.UserName,
                    CreatedBy=curUser.Id,
                    Addresslongitude = u.Longitude,
                    AddressLatitude = u.Latitude,
                    AddressArea = u.Location,
                    AddressCityId = u.CityId,
                    AddressCity = cityName.CityName,
                    PhoneNumber=curUser.PhoneNumber
                };
                _context.TbAddresses.Add(tb);
                _context.SaveChanges();
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم اضافة العنوان بنجاح",
                    data = new
                    {
                        UseId = curUser.Id,
                        CityId = tb.AddressCityId,
                        cityName = tb.AddressCity,
                        Longitute = tb.Addresslongitude,
                        Latitude = tb.AddressLatitude,
                        Location = tb.AddressArea,

                    }
                });


             }
             catch (Exception e)
             {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "not found"
                });

             }
        }
          

        [HttpPost]
        [Route("~/EditUserAddress")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> EditAddressProfile([FromBody] MyaddressAddVM u)
        {

            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            if (curUser != null)
            {
                var cityName = cityService.getAll().FirstOrDefault(a => a.CityId == u.CityId);
               
                curUser.Longitute = u.Longitude;
                curUser.Latitude = u.Latitude;
                curUser.Location = u.Location;
              //  curUser.CityId = u.CityId;
                curUser.CityName = cityName.CityName;
                var result = await Usermanager.UpdateAsync(curUser);
                if (result.Succeeded)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم التعديل بنجاح",
                        data = new
                        {
                            userId=curUser.Id,
                            CityId = curUser.CityId,
                            cityName = curUser.CityName,
                            Longitute = curUser.Longitute,
                            Latitude = curUser.Latitude,
                            Location = curUser.Location



                        }
                    });
                }
                else
                {
                    return Ok(new ApiResponse<string>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "حدث خطأاثناء التعديل",
                        // Exceptions = "invalid OTP"
                    });
                }



            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user"
                });
            }
            //var user = await Usermanager.FindByEmailAsync();
        }
        [HttpGet]
        [Route("~/GetUserAddress")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetAddressProfile()
        {
            try
            {
               
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                // List<TbProduct> Sames = productService.getAll().Where(a => a.ProductCategoryId == data.ProductCategoryId).ToList();
                List<TbAddress> userAddress = addressService.getAll().Where(a=>a.Id==curUser.Id).ToList();
                List<AddressGetVM> ListAddress = new List<AddressGetVM>();
                if (userAddress !=null)
                {
                  
                    foreach (var item in userAddress)
                    {
                        AddressGetVM getAddress = new AddressGetVM()
                        {
                            userid = item.Id,
                            AddressId=item.AddressId,
                            cityName = item.AddressCity,
                            Location = item.AddressArea,
                            Latitude = item.AddressLatitude,
                            Longitude = item.Addresslongitude

                        };
                        ListAddress.Add(getAddress);

                    }

                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = ListAddress
                    });


                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = ListAddress
                    });

                }
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = e.Message
                });

            }


            //var user = await Usermanager.FindByEmailAsync();
        }


        [HttpPost]
        [Route("~/DeleteUserAddress")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> DeleteUserAddress(Guid AddressId)
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            //var tbPurchasings = await _context.TbPurchasingCarts.Where(x => x.CreatedBy
            //   .Equals(curUser.Id)).ToListAsync();
            try
            {
                var tbPurchasings = await _context.TbAddresses.Where(x => x.CreatedBy.Equals(curUser.Id) && x.AddressId == AddressId).FirstOrDefaultAsync();

                //List<TbFavourite> tbFavourites = new List<TbFavourite>();
                if (tbPurchasings == null)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "not found Data",
                        // Exceptions = "not found",
                    });


                }
                var reasult = _context.Remove(tbPurchasings);
                //
                _context.SaveChanges();
                if (reasult != null)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "تم الحذف"
                    });
                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "حدث خطأ اثناء الحذف"
                    });

                }



            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = e.Message
                });

            }
        }

        [HttpPost]
        [Route("~/AddCharge")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> AddCharge([FromBody] AddChargeVM u)
        {

            try
            {
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                if (u.CurrentState == 0)
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "409",
                        Status = false,
                        Message = "عملية شحن غير صحيحة",
                        data = new
                        {
                           
                        }
                    });



                }


                TbCharge tb = new TbCharge()
                {
                    Id = curUser.Id,
                    CreatedBy = curUser.Id,
                    ChargeValue=u.ChargeValue,
                    ChargeType=u.ChargeType,
                    CurrentState=u.CurrentState,
                    
                    
                 
                };
                _context.TbCharges.Add(tb);
                _context.SaveChanges();
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم شحن المحفظه بنجاح",
                    data = new
                    {
                        ChargeId=tb.ChargeId,
                        UseId = curUser.Id,
                        ChargeValue = tb.ChargeValue,
                       
                    }
                });


            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = "not found"
                });

            }
        }


        [HttpGet]
        [Route("~/GetCharge")]
        [Authorize(Policy = "MixedAccess")]
        public async Task<IActionResult> GetCharge()
        {
            try
            {

                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                // List<TbProduct> Sames = productService.getAll().Where(a => a.ProductCategoryId == data.ProductCategoryId).ToList();
                List<TbCharge>  tbCharges  = chargeService.getAll().Where(a => a.Id == curUser.Id).ToList();
                List<walletbalance> ListCharges = new List<walletbalance>();
                if (tbCharges != null)
                {
                    decimal totalcharge = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("شحن")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                    decimal totalPays = _context.TbCharges.Where(a => a.Id == curUser.Id && a.ChargeType.Equals("سحب")).Sum(a => Convert.ToDecimal(a.ChargeValue));
                    decimal balance = totalcharge - totalPays;
                    walletbalance walletbalance = new walletbalance()
                    {
                        Balance=balance

                    };

                    List<GetChargeVM> ListCharge = new List<GetChargeVM>();
                    foreach (var item in tbCharges)
                    {
                        string x = "";
                        if (!string.IsNullOrEmpty(item.Notes))
                        {
                            x = item.Notes;
                        }
                        else
                        {
                            x="تم شحن المحفظة";
                        }
                        //List<GetChargeVM> ListCharge = new List<GetChargeVM>();
                        GetChargeVM  getCharge = new GetChargeVM()
                        {
                            Id = item.Id,
                            ChargeId = item.ChargeId,
                            ChargeType = item.ChargeType,
                            ChargeValue = item.ChargeValue,
                            CreatedDate = item.CreatedDate?.ToString("yyyy/MM/dd"),
                            Notes=x

                        };
                        ListCharge.Add(getCharge);

                    }
                    walletbalance.ChargeVM = ListCharge;
                    ListCharges.Add(walletbalance);

                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = ListCharges
                    });


                }
                else
                {
                    return Ok(new ApiResponse<object>()
                    {
                        Code = "200",
                        Status = true,
                        Message = "Data",
                        data = ListCharges
                    });

                }
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = " not found",
                    Exceptions = e.Message
                });

            }


            //var user = await Usermanager.FindByEmailAsync();
        }

        // DELETE api/<UserLogInApiController>/5
        [HttpPost]
        [Route("~/DeleteUser")]
        [Authorize(Policy = "MixedAccess")]

        public async Task<IActionResult> DeleteUser()
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
            var result = await Usermanager.DeleteAsync(curUser);
            if (result.Succeeded)
            {
               // var Token = _identity.GenerateToken(curUser);
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "تم حذف الحساب بنجاح",
                    data = new
                    {
                       
                    }
                });
            }
            else
            {

                return Ok(new ApiResponse<string>()
                {
                    Code = "404",
                    Status = false,
                    Message = "مستخدم غير موجود",
                    Exceptions = "كلمة السر او المستخدم غير صحيح"
                });
            }


        }
        [HttpPost]
        [Route("~/SendSMS")]
        public IActionResult Send(SendSMSDto dto)
        {
            var result = _smsService.Send(dto.MobileNumber, dto.Body);

            if (!string.IsNullOrEmpty(result.ErrorMessage))
                return BadRequest(result.ErrorMessage);

            return Ok(result);
        }

    }
}
