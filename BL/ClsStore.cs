using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;

namespace BL
{
    public interface StoreService
    {
        List<TbStore> getAll();
        List<TbStore> getbyUserId();
        bool Add(TbStore client);
        bool Edit(TbStore client);
        bool Delete(TbStore client);


    }
    public class ClsStore : StoreService
    {
        TawredatDbContext ctx;
        private readonly IHttpContextAccessor _httpContextAccessor;
        UserManager<ApplicationUser> Usermanager;

        public ClsStore(TawredatDbContext context, IHttpContextAccessor httpContextAccessor, UserManager<ApplicationUser> usermanager)
        {
            ctx = context;
            _httpContextAccessor = httpContextAccessor;
            Usermanager = usermanager;
        }
        public List<TbStore> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbStore> lstAboutApps = ctx.TbStores.ToList();

            return lstAboutApps;
        }

        public bool Add(TbStore item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbStores.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbStore item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();

                ctx.Entry(item).State = EntityState.Modified;
                ctx.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }

        public bool Delete(TbStore item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();

                ctx.Entry(item).State = EntityState.Deleted;
                ctx.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public List<TbStore> getbyUserId()
        {
            var userId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userId);
            List<TbStore> lstAboutApps = ctx.TbStores.Where(a => a.CreatedBy == curUser.Id).ToList();

            return lstAboutApps;
        }
    }
}
