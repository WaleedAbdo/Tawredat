using BL;
using Domains;
using Microsoft.AspNetCore.Identity;
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
    public class TermsAndConditionsApiController : ControllerBase
    {
        PoliciesAndPrivacyService policiesAndPrivacyService;
       TermAndConditionService termAndConditionService;
        AboutAppService aboutAppService;
       TawredatDbContext Ctx;
        public TermsAndConditionsApiController(TermAndConditionService TermAndConditionService,  
            TawredatDbContext Context,
            AboutAppService AboutAppService,
            PoliciesAndPrivacyService PoliciesAndPrivacyService)
        {
            termAndConditionService = TermAndConditionService;
            Ctx = Context;
            aboutAppService = AboutAppService;
            policiesAndPrivacyService = PoliciesAndPrivacyService;
        }
        // GET: api/<TermsAndConditionsApiController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            List<TbTermAndCondition> tbTerms = termAndConditionService.getAll();
            List<TermAndConditionVM> terms = new List<TermAndConditionVM>();

            foreach (var item in tbTerms)
            {
                TermAndConditionVM termAnd = new TermAndConditionVM()
                {
                   TermsAndConditionsDescription= item.TermsAndConditionsDescription,
                  
                };

                terms.Add(termAnd);

            }
            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = terms,
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
        [Route("~/api/About")]
        public async Task<IActionResult> GetAbout()
        {
            List<TbAboutApp> tbAbout = aboutAppService.getAll();
            List<AboutVM> Abouts = new List<AboutVM>();

            foreach (var item in tbAbout)
            {
                AboutVM aboutVM = new AboutVM()
                {
                  AboutAppDescription = item.AboutAppDescription,

                };

                Abouts.Add(aboutVM);

            }
            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = Abouts,
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
        [Route("~/api/PoliciesAndPrivacy")]
        public async Task<IActionResult> GetPoliciesAndPrivacy()
        {
            List<TbPoliciesAndPrivacy> tbpolice = policiesAndPrivacyService.getAll();
            List<PoliceAndPrivacyVM> polices = new List<PoliceAndPrivacyVM>();

            foreach (var item in tbpolice)
            {
                PoliceAndPrivacyVM PolicVM = new PoliceAndPrivacyVM()
                {
                    PoliciesAndPrivacyDescription = item.PoliciesAndPrivacyDescription,

                };

                polices.Add(PolicVM);

            }
            try
            {
                return Ok(new ApiResponse<object>()
                {
                    Code = "200",
                    Status = true,
                    Message = "Data",
                    data = polices,
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


        // GET api/<TermsAndConditionsApiController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<TermsAndConditionsApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<TermsAndConditionsApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<TermsAndConditionsApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
