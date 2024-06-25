using BL;
using Domains;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;
using Twilio.Jwt.Taskrouter;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class EvaluationProductApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;

        EvaluationProductService evaluationProductService;
        TawredatDbContext _context;
        public EvaluationProductApiController(UserManager<ApplicationUser> usermanager,
            EvaluationProductService EvaluationProductService, TawredatDbContext Context)
        {
            evaluationProductService = EvaluationProductService;
            _context = Context;
            Usermanager = usermanager;
        }
        // GET: api/<FavouriteApiController>
        //[HttpGet]
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        //// GET api/<FavouriteApiController>/5
        //[HttpGet("{id}")]

        //public IEnumerable<TbEvaluationProduct> Get(Guid id)
        //{

        //    return evaluationProductService.getAll().Where(A => A.ProductEvaluationId == id).ToList();
        //}
        //[HttpGet]
        //public async Task<IActionResult> GetEvaluationProduct()
        //{
        //    var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);

        //    // return favouriteService.getAll().Where(A => A.UserId == curUser.Id).ToList();
        //    try
        //    {
        //        //List<TbFavourite> tbFavourites = new List<TbFavourite>();
        //        var tbFavourite = await _context.TbEvaluationProducts.Where(x => x.CreatedBy.Equals(curUser.Id)).ToListAsync();

        //        List<EvaluationProductGetVM> ListFavourite = new List<EvaluationProductGetVM>();
        //        foreach (var favourite in tbFavourite)
        //        {
        //            EvaluationProductGetVM favouriteGetVM = new EvaluationProductGetVM()
        //            {
        //                ProductName = favourite.ProductName,
        //                ProductEvaluationText = favourite.ProductEvaluationText,
        //                StartsNo = favourite.StartsNo,
        //                CreatedBy = favourite.CreatedBy,
        //                //ProductImage = favourite.ProductImage,
        //                //ProductPrice = favourite.ProductPrice,
        //            };

        //            ListFavourite.Add(favouriteGetVM);  
        //        }

        //        return Ok(new ApiResponse<object>()
        //        {
        //            Code = "200",
        //            Status = true,
        //            Message = "Data",
        //            data = ListFavourite,
        //        });

        //    }
        //    catch (Exception e)
        //    {
        //        return Ok(new ApiResponse<object>()
        //        {
        //            Code = "404",
        //            Status = false,
        //            Message = " not found",
        //            Exceptions = "not found"
        //        });

        //    }



        //}

        // POST api/<FavouriteApiController>
        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        //[Route("~/api/AddEvaluationProduct")]
        public async Task<IActionResult> Post([FromBody] EvaluationProductAddVM evaluationProduct)
        {
            try
            {
                TbProduct SuppProdu = await _context.TbProducts.Where(x => x.ProductId.Equals(evaluationProduct.SalesInvoiceId)).FirstOrDefaultAsync();
                var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
                var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);
                if (SuppProdu == null)
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found"
                    });
                }

                TbEvaluationProduct tbFavourite = new TbEvaluationProduct()
                {
                    ProductName = SuppProdu.ProductName,
                    CreatedBy = curUser.Id,
                    ProductId = evaluationProduct.SalesInvoiceId,
                    StartsNo = evaluationProduct.StartsNo,

                    ProductEvaluationText = evaluationProduct.ProductEvaluationText


                };

                _context.TbEvaluationProducts.Add(tbFavourite);
                _context.SaveChanges();

                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Done Add Fovourite",
                    data = new
                    {
                        ProductId = evaluationProduct.SalesInvoiceId,
                        tbFavourite.ProductEvaluationId,

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

        //// PUT api/<FavouriteApiController>/5
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody] string value)
        //{
        //}

        //// DELETE api/<FavouriteApiController>/5
        //[HttpDelete("{id}")]
        //public void Delete(int id)
        //{
        //}
    }
}
