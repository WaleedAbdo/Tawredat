using Domains;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using static System.Collections.Specialized.BitVector32;

namespace BL
{
    public interface ProductService
    {
        List<TbProduct> getAll();
        bool Add(TbProduct client);
        bool Edit(TbProduct client);
        bool Delete(TbProduct client);
        List<TbProduct> getAllbyuserId();


    }
    public class ClsProduct : ProductService
    {
        TawredatDbContext ctx;
        private readonly IHttpContextAccessor _httpContextAccessor;
        UserManager<ApplicationUser> Usermanager;
        public ClsProduct(TawredatDbContext context, 
            UserManager<ApplicationUser> usermanager, IHttpContextAccessor httpContextAccessor)
        {
            ctx = context;
            Usermanager = usermanager;
            _httpContextAccessor = httpContextAccessor;
        }
        public List<TbProduct> getAll()
        {
            
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbProduct> lstProducts = ctx.TbProducts.ToList();

            return lstProducts;
        }

        public bool Add(TbProduct item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbProducts.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbProduct item)
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

        public bool Delete(TbProduct item)
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

        public  List<TbProduct> getAllbyuserId()
        {

            var userId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userId);
            
            
            List<TbProduct> lstProducts = ctx.TbProducts.Where(a=>a.CreatedBy==curUser.Id).ToList();
        

            return lstProducts;
        }
    }
}
