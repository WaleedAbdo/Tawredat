using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public interface SupplierService
    {
        List<TbSupplier> getAll();
        List<TbSupplier> getAllbyuserId();
        bool Add(TbSupplier client);
        bool Edit(TbSupplier client);
        bool Delete(TbSupplier client);
        Task<TbSupplier> GetByIdAsync(Guid supplierId);

    }
    public class ClsSupplier : SupplierService
    {
        TawredatDbContext ctx;
        private readonly IHttpContextAccessor _httpContextAccessor;
        UserManager<ApplicationUser> Usermanager;
        public ClsSupplier(TawredatDbContext context, IHttpContextAccessor httpContextAccessor, UserManager<ApplicationUser> usermanager)
        {
            ctx = context;
            _httpContextAccessor = httpContextAccessor;
            Usermanager = usermanager;
        }
        public List<TbSupplier> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbSupplier> lstSuppliers = ctx.TbSuppliers.ToList();

            return lstSuppliers;
        }

        public bool Add(TbSupplier item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbSuppliers.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbSupplier item)
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

        public bool Delete(TbSupplier item)
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

        public async Task<TbSupplier> GetByIdAsync(Guid supplierId)
        {
            return await ctx.TbSuppliers.FindAsync(supplierId);
        }

        public List<TbSupplier> getAllbyuserId()
        {
            var userId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userId);

            List<TbSupplier> lstSuppliers = ctx.TbSuppliers.Where(a => a.CreatedBy == curUser.Id).ToList();

            return lstSuppliers;
        }
    }
}
