using BL;
using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using TawredatProject.Helpers;
using TawredatProject.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TawredatProject.Controllers
{
   
    [Route("api/[controller]")]
    [ApiController]
    public class SliderApiController : ControllerBase
    {
       SliderService sliderService;
        TawredatDbContext Ctx;
        public SliderApiController(SliderService SliderService, TawredatDbContext Context)
        {
            sliderService = SliderService;
            Ctx = Context;
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
        // GET: api/<SliderApiController>
        [HttpGet]
       
        public IEnumerable<TbSlider> Get()
        {
            return sliderService.getAll();
        }
        // GET: api/<SliderApiController>
        [HttpGet]
        [Route("~/api/SliderBeforeLogin")]
        public async Task<IActionResult> GetSliderBeforeLogin()
        {
            //return  sliderService.GetSliderBeforeLogin();
     
            List<TbSlider> Sliders = sliderService.GetSliderBeforeLogin();
            List<SliderVM> ListSlider = new List<SliderVM>(); 
            
            foreach (var item in Sliders)
            {
                SliderVM slider = new SliderVM()
                {
                    SliderId = item.SliderId,
                    SliderImage = DomainUrl + "Uploads/" + item.SliderImage,
                    SliderText = item.SliderText,
                    SliderTitle = item.SliderTitle
                };

                ListSlider.Add(slider);
 

            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListSlider,
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
        [HttpGet]
        [Route("~/api/SliderAfterLogin")]
        public async Task<IActionResult> GetSliderAfterLogin()
        {
            List<TbSlider> Sliders = sliderService.GetSliderAfterLogin();
            List<SliderVM> ListSlider = new List<SliderVM>();

            foreach (var item in Sliders)
            {
                SliderVM slider = new SliderVM()
                {
                    SliderId = item.SliderId,
                    SliderImage = DomainUrl + "Uploads/" + item.SliderImage,
                    SliderText = item.SliderText,
                    SliderTitle = item.SliderTitle
                };

                ListSlider.Add(slider);


            }

            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = ListSlider,
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

        // GET api/<SliderApiController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<SliderApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<SliderApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<SliderApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
