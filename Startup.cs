using BL;
using EmailService;
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

            var emailConfig = Configuration
       .GetSection("EmailConfiguration")
       .Get<EmailConfiguration>();
            services.AddSingleton(emailConfig);
            services.AddScoped<IEmailSender, EmailSender>();
            services.AddAuthentication()
            .AddGoogle(options =>
            {
                options.ClientId = "975214719409-pp37jcmifi7bg33254ve18ku83telt9r.apps.googleusercontent.com";
                options.ClientSecret = "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";


            });
           
            ////==UseSwagger===
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
            services.AddAuthentication().AddFacebook(options =>
            {
                options.AppId = "1387677424973135";
                options.AppSecret = "de6fc7e479121219c97a2e079eee1b3e";
            });
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
        //    services.AddIdentity<IdentityUser, IdentityRole>()
        //.AddEntityFrameworkStores<TawredatDbContext>()
        //.AddDefaultTokenProviders();
            // services.AddSingleton<UserManager<IdentityUser>>();


            //services.AddIdentityCore<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
            //.AddEntityFrameworkStores<TawredatDbContext>();

            services.AddHttpContextAccessor();
            //services.AddTransient<IPrincipal>(provider => provider.GetService<IHttpContextAccessor>().HttpContext.User);
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

            services.ConfigureApplicationCookie(opt =>
            {
                opt.AccessDeniedPath = new Microsoft.AspNetCore.Http.PathString("/Home/Accessdenied");
            });
            //services.AddAuthentication(option => {
            //    option.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
            //    option.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            //    option.DefaultSignInScheme = JwtBearerDefaults.AuthenticationScheme;
            //}).AddJwtBearer(op => {

            //    op.SaveToken = true;
            //    op.TokenValidationParameters = new TokenValidationParameters
            //    {
            //        ValidateIssuer = true,
            //        ValidateAudience = true,
            //        ValidAudience = Configuration["JWT:ValidAudience"],
            //        ValidIssuer = Configuration["JWT:ValidIssuer"],
            //        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Configuration["Jwt:SecretKey"]))
            //    };
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
            app.UseCookiePolicy();
            //app.Use(async (context, next) => {

            //    var jwtToken = context.Session.GetString("JWToken");
            //    if (!string.IsNullOrEmpty(jwtToken))
            //    {
            //        context.Request.Headers.Add("Authorization", "Bearer " + jwtToken);
            //    }
            //    await next();
            //});

            app.UseCors(MyAllowSpecificOrigins);
            app.UseRouting();
            app.UseSession();
            app.UseAuthentication();
            app.UseAuthorization();
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
