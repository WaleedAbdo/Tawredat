using BL;
using EmailService;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
//using JWTAuthentication.Authentication;
//using Microsoft.AspNetCore.Authentication.JwtBearer;

using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Security.Principal;
using System.Text;
using TawredatProject.Controllers;
using TawredatProject.Helpers;
using TawredatProject.Hubs;
using TawredatProject.Models;
using TawredatProject.Services;

namespace TawredatProject
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }
        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();
            // services.AddTokenAuthentication(Configuration);
            /*******The following code to configure JWT token based auth*******/

            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
          .AddJwtBearer(options =>
          {
              options.TokenValidationParameters = new TokenValidationParameters
              {
                  ValidateIssuer = true,
                  ValidateAudience = true,
                  ValidateIssuerSigningKey = true,
                  ValidIssuer = "MyApplicationName",
                  ValidAudience = "postman", //it could be "com.mycompany.myapp" in case of mobile app or a link in case of web app, or you can disable it.
                  IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("cf92fb21-1adb-4432-8b07-078404531cee"))
              };
          });
            /***************************************/
            /*************IMPORTANT*****************/
            /***************************************/
            /*The following snippet is to create a policy to allow you to use a mix auth based
             * on cookie and JWT token at the same time
             * So, if added [Authorize(Policy = "MixedAccess")] above any endpoint it will be
             * accessible through both JWT token & Cookie auth
             */
            services.AddAuthorization(options =>
            {
                options.AddPolicy("MixedAccess", policy =>
                {
                    policy.AuthenticationSchemes = new List<string>
                    {
                        JwtBearerDefaults.AuthenticationScheme
                       // CookieAuthenticationDefaults.AuthenticationScheme
                    };
                    policy.RequireAuthenticatedUser();
                });
            });
           // services.AddAuthentication(options =>
           // {
           //     options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
           //     options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
           // })
           //.AddCookie(options =>
           //{
           //    options.Cookie.HttpOnly = true;
           //    options.Cookie.SecurePolicy = CookieSecurePolicy.Always;
           //    options.Cookie.SameSite = SameSiteMode.Strict;
           //    options.LoginPath = "/Account/Login";
           //});
            var emailConfig = Configuration
       .GetSection("EmailConfiguration")
       .Get<EmailConfiguration>();
            services.AddSingleton(emailConfig);
            services.AddScoped<IEmailSender, EmailSender>();
            //services.AddAuthentication()
            //.AddGoogle(options =>
            //{
            //    options.ClientId = "975214719409-pp37jcmifi7bg33254ve18ku83telt9r.apps.googleusercontent.com";
            //    options.ClientSecret = "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";


            //});

            ////==UseSwagger===
            ///
           // services.AddEndpointsApiExplorer();
            services.AddSwaggerGen();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Implement Swagger UI",
                    Description = "A simple example to Implement Swagger UI",
                });
            });
            //==UseSwagger===
            //services.AddAuthentication().AddFacebook(options =>
            //{
            //    options.AppId = "1387677424973135";
            //    options.AppSecret = "de6fc7e479121219c97a2e079eee1b3e";
            //});
            services.AddScoped<AboutAppService, ClsAboutApp>();
            services.AddScoped<AddressService, ClsAddress>();
            services.AddScoped<ChargeService, ClsCharge>();
            services.AddScoped<CityService, ClsCity>();
            services.AddScoped<ComplainsAndSuggestionsService, ClsComplainsAndSuggestions>();
            services.AddScoped<DeliveryService, ClsDelivery>();
            services.AddScoped<EvaluationDeliveryService, ClsEvaluationDelivery>();
            services.AddScoped<EvaluationSupplierProductService, ClsEvaluationSupplierProduct>();
            services.AddScoped<FavouriteService, ClsFavourite>();
            services.AddScoped<NotificationService, ClsNotification>();
            services.AddScoped<OfferService, ClsOffer>();
            services.AddScoped<PaymentMethodService, ClsPaymentMethod>();
            services.AddScoped<PoliciesAndPrivacyService, ClsPoliciesAndPrivacy>();
            services.AddScoped<ProductService, ClsProduct>();
            services.AddScoped<ProductCategoryService, ClsProductCategory>();
            services.AddScoped<StoreService, ClsStore>();
            services.AddScoped<PromocodeService, ClsPromocode>();
            services.AddScoped<PurchasingCartService, ClsPurchasingCart>();
            services.AddScoped<SalesInvoiceService, ClsSalesInvoice>();
            services.AddScoped<SalesInvoiceProductService, ClsSalesInvoiceProduct>();
            services.AddScoped<SettingService, ClsSetting>();
            services.AddScoped<SliderService, ClsSlider>();
            services.AddScoped<SupplierService, ClsSupplier>();
            services.AddScoped<RequestService, ClsRequest>();
            services.AddScoped<ChargeService, ClsCharge>();
            services.AddScoped<ComplainsAndSuggestionsService, ClsComplainsAndSuggestions>();
            services.AddScoped<SupplierProductService, ClsSupplierProduct>();
            services.AddScoped<TermAndConditionService, ClsTermAndCondition>();
            services.AddScoped<IAccountRepository, AccountRepository>();
            services.AddScoped<CityDeliveryService, ClsCityDeliveryFees>();
            services.AddScoped<SupplierCategoryService, ClsSupplierCategory>();
            services.AddScoped<SupplierSubscriptionService, ClsSupplierSubscription>();
            services.AddScoped<PurchaserSubscriptionService, ClsPurchaseSubscribtion>();
            services.Configure<TwilioSettings>(Configuration.GetSection("Twilio"));
            services.AddTransient<ISMSService, SMSService>();
            services.AddTransient<IIdentityService, IdentityService>();
            services.AddControllersWithViews();
            services.AddSignalR();
            services.AddMvc().AddSessionStateTempDataProvider();
            services.AddSession();
            services.AddHttpContextAccessor();
            services.AddDbContext<TawredatDbContext>(options => options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));
            services.AddIdentity<ApplicationUser, IdentityRole>(options =>
            {
                options.Password.RequiredLength = 1;
                options.Password.RequireLowercase = false;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireUppercase = false;
                options.User.RequireUniqueEmail = false;
                options.SignIn.RequireConfirmedEmail = false;
                options.User.AllowedUserNameCharacters = "";
                options.Password.RequireDigit = false;
                options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromSeconds(30);
                options.Lockout.MaxFailedAccessAttempts = 5;

                options.User.AllowedUserNameCharacters = string.Empty;

            }).AddErrorDescriber<CustomIdentityErrorDescriber>().AddEntityFrameworkStores<TawredatDbContext>().AddDefaultTokenProviders();    ///.AddDefaultUI();


            #region Microsoft Identity


            #endregion

            //services.ConfigureApplicationCookie(opt =>
            //{
            //    opt.AccessDeniedPath = new Microsoft.AspNetCore.Http.PathString("/Home/Accessdenied");
            //});

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                // app.UseDeveloperExceptionPage();

                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            //app.UseCookiePolicy();
           
            app.UseCors(MyAllowSpecificOrigins);
            app.UseRouting();
           
            app.UseAuthentication();
            app.UseAuthorization();
            //app.UseAuthentication();
            //app.UseAuthorization();
            app.UseSession();
            //==UseSwagger===
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "Showing API V1");
            });
            //==UseSwagger===
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(

              name: "areas",
              pattern: "{area:exists}/{controller=Home}/{action=Index}");
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");



                endpoints.MapHub<UserHub>("/hubs/userCount");

                endpoints.MapHub<DeathlyHallowsHub>("hubs/deathyhallows");


                //endpoints.MapHub<DeathlyHallowsHub>("/hubs/houseGroup");


                endpoints.MapHub<NotificationHub>("/hubs/notification");

                endpoints.MapHub<BasicChatHub>("/hubs/basicchat");

                endpoints.MapHub<ChatHub>("/hubs/chat");

                endpoints.MapHub<OrderHub>("/hubs/order");
            });
        }
    }
}
