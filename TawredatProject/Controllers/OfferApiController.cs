using BL;
using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OfferApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;

        TawredatDbContext _context;
        public OfferApiController(UserManager<ApplicationUser> usermanager, TawredatDbContext Context)
        {
            _context = Context;
            Usermanager = usermanager;
        }
        public static string DomainUrl
        {
            get
            {
                IHttpContextAccessor _httpContextAccessor = new HttpContextAccessor();
                var request = _httpContextAccessor.HttpContext.Request;
                var baseUrl = $"{request.Scheme}://{request.Host}/";

                return baseUrl;
            }
        }

        [HttpGet]
        [HttpGet("~/api/GetGategoryOffer")]
        public async Task<IActionResult> GetOffer()
        {
            var offers = await _context.TbOffers.ToListAsync();
            var categories = await _context.TbProductCategories.ToListAsync();
            List<OfferCategory> ListCategory = new List<OfferCategory>();
            // List<TbProduct> products = productService.getAll();

            foreach (var item in categories)
            {
                OfferCategory Category = new OfferCategory()
                {
                    ProductCategoryId = item.ProductCategoryId,
                    ProductCategoryName = item.ProductCategoryName,
                    ProductCategoryDescription = item.ProductCategoryDescription,
                    ProductCategoryImage = DomainUrl + "Uploads/" + item.ProductCategoryImage,


                };
                var products = await _context.TbOffers.Where(a => a.ProductCategoryId == Category.ProductCategoryId).ToListAsync();
                List<OfferVM> productVMs = new List<OfferVM>();
                foreach (var product in products)
                {
                    bool favor = false;

                    var favorit = _context.TbFavourites.FirstOrDefault(b => b.ProductId == product.ProductId);
                    if (favorit != null)
                    {
                        favor = true;

                    }
                    else
                    {
                        favor = false;
                    }
                    OfferVM productVM = new OfferVM()
                    {

                        ProductId = product.ProductId,
                        ProductName = product.ProductName,
                        PriceAfterOffer = product.PriceAfterOffer,
                        PriceBeforeOffer = product.PriceBeforeOffer,
                        ProductEvaluationNumber = product.ProductEvaluationNumber,
                        ProductEvaluationStarts = product.ProductEvaluationStarts,
                        ProductImage = DomainUrl + "Uploads/" + product.ProductImage,
                        SupplierName = product.SupplierName,
                        IsFavourit = favor,

                    };

                    productVMs.Add(productVM);

                }


                Category.products = productVMs;

                if (products.Count > 0)
                    ListCategory.Add(Category);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListCategory,
                });
            }
            catch (Exception e)
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "404",
                    Status = false,
                    Message = "user not found",
                    Exceptions = "invalid user name or password"
                });

            }



        }

    }
}