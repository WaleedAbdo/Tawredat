using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BL;
using Domains;
using TawredatProject.Models;
using TawredatProject.Helpers;
using System.Linq.Expressions;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using Twilio.Jwt.Taskrouter;
using Microsoft.AspNetCore.Authorization;

namespace TawredatProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TbSubscriptionRequestsApiController : ControllerBase
    {
        UserManager<ApplicationUser> Usermanager;
        private readonly TawredatDbContext _context;

        public TbSubscriptionRequestsApiController(TawredatDbContext context, UserManager<ApplicationUser> usermanager)
        {
            _context = context;
            Usermanager = usermanager;
        }

        // GET: api/TbSubscriptionRequestsApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TbSubscriptionRequest>>> GetTbSubscriptionRequest()
        {
            return await _context.TbSubscriptionRequest.ToListAsync();
        }

        // GET: api/TbSubscriptionRequestsApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TbSubscriptionRequest>> GetTbSubscriptionRequest(Guid? id)
        {
            var tbSubscriptionRequest = await _context.TbSubscriptionRequest.FindAsync(id);

            if (tbSubscriptionRequest == null)
            {
                return NotFound();
            }

            return tbSubscriptionRequest;
        }

        // PUT: api/TbSubscriptionRequestsApi/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTbSubscriptionRequest(Guid? id, TbSubscriptionRequest tbSubscriptionRequest)
        {
            if (id != tbSubscriptionRequest.RequestId)
            {
                return BadRequest();
            }

            _context.Entry(tbSubscriptionRequest).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TbSubscriptionRequestExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/TbSubscriptionRequestsApi
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<IActionResult> Post(SubscriptionRequestVM model)
        {
            
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }
            var city = _context.TbCities.FirstOrDefault(a => a.CityId == model.CityId);
            TbSubscriptionRequest request = new TbSubscriptionRequest()
            {
                
                // RequestId = SubscriptionRequestVM.RequestId,    
                SubscriberName = model.SubscriberName,
                Email = model.Email,
                PhoneNumber = model.PhoneNumber,
                CityName = city.CityName,
                ClinicName = model.ClinicName
            };

            _context.TbSubscriptionRequest.Add(request);

                try
                {
                _context.SaveChanges();
                }
                catch (DbUpdateException)
                {
                    if ((model==null))
                    {
                        return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                        {
                            Code = "409",
                            Status = true,
                            Message = "لا يوجد"
                        });
                }
                    else
                    {
                        throw;
                    }
                }
            return Ok(new ApiResponse<object>()
            {
                Code = "200",
                Status = true,
                Message = "تم اضافة الطلب",
                data = new
                {
                    RequestId = request.RequestId,


                }
            });

            //return CreatedAtRoute("DefaultApi", new { id = tbFavourite.RequestId}, model);
        }
        [HttpPost]
        [Authorize(Policy = "MixedAccess")]
        [Route("~/api/ComplainsAndSuggestion")]
        public async Task<IActionResult> Post(ComplainsAndSuggestionaddVM VM)
        {
            var userIds = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userIds);

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
           
            TbComplainsAndSuggestion request = new TbComplainsAndSuggestion()
            {

                // RequestId = SubscriptionRequestVM.RequestId,    
                Name = VM.Name,
                Email = VM.Email,
                ComplaintsAndSuggestionsText = VM.ComplaintsAndSuggestionsText,
                CreatedBy = curUser.Id,
              
            };

            _context.TbComplainsAndSuggestions.Add(request);

            try
            {
                _context.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (VM == null)
                {
                    return Ok(new ApiResponse<IEnumerable<IdentityError>>()
                    {
                        Code = "409",
                        Status = true,
                        Message = "Not Found"
                    });
                }
                else
                {
                    throw;
                }
            }
            return Ok(new ApiResponse<object>()
            {
                Code = "200",
                Status = true,
                Message = "تم الاضافة الشكوى",
                data = new
                {
                    RequestId = request.ComplaintsAndSuggestionsId,


                }
            });

            //return CreatedAtRoute("DefaultApi", new { id = tbFavourite.RequestId}, model);
        }

        // DELETE: api/TbSubscriptionRequestsApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TbSubscriptionRequest>> DeleteTbSubscriptionRequest(Guid? id)
        {
            var tbSubscriptionRequest = await _context.TbSubscriptionRequest.FindAsync(id);
            if (tbSubscriptionRequest == null)
            {
                return NotFound();
            }

            _context.TbSubscriptionRequest.Remove(tbSubscriptionRequest);
            await _context.SaveChangesAsync();

            return tbSubscriptionRequest;
        }

        private bool TbSubscriptionRequestExists(Guid? id)
        {
            return _context.TbSubscriptionRequest.Any(e => e.RequestId == id);
        }
    }
}
