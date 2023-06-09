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
    public interface SalesInvoiceService
    {
        List<TbSalesInvoice> getAll();
        bool Add(TbSalesInvoice client);
        bool Edit(TbSalesInvoice client);
        bool Delete(TbSalesInvoice client);
        List<TbSalesInvoice> getDailyAll();
        List<TbSalesInvoice> getbySupplierAll();
        List<TbSalesInvoice> getbyUserIdAll();



    }
    public class ClsSalesInvoice : SalesInvoiceService
    {
        TawredatDbContext ctx;
        UserManager<ApplicationUser> Usermanager;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public ClsSalesInvoice(TawredatDbContext context,
            UserManager<ApplicationUser> usermanager,
            IHttpContextAccessor httpContextAccessor)
        {
            ctx = context;
            Usermanager = usermanager;
            _httpContextAccessor = httpContextAccessor;
        }
        public List<TbSalesInvoice> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbSalesInvoice> lstSalesInvoices = ctx.TbSalesInvoices.ToList();

            return lstSalesInvoices;
        }

        public bool Add(TbSalesInvoice item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbSalesInvoices.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbSalesInvoice item)
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

        public bool Delete(TbSalesInvoice item)
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

        public List<TbSalesInvoice> getDailyAll()
        {
            DateTime currentDate = DateTime.UtcNow.Date;
            List<TbSalesInvoice> lstSalesInvoices = ctx.TbSalesInvoices.Where(a=>a.CreatedDate.Value.Date == currentDate).ToList();

            return lstSalesInvoices;
        }

        public List<TbSalesInvoice> getbySupplierAll()
        {
            var userId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userId);
            var ListUser = ctx.TbSuppliers.Where(a => a.CreatedBy == curUser.Id).Select(s => s.SupplierId).ToList();
            List<TbSalesInvoice> lstSalesInvoices = ctx.TbSalesInvoices.Where(x => ListUser.Any(l => l == x.SupplierId)).ToList();


            return lstSalesInvoices;
        }

        public List<TbSalesInvoice> getbyUserIdAll()
        {
            

            var userId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var curUser = Usermanager.Users.FirstOrDefault(a => a.Id == userId);
            var ListUser = Usermanager.Users.Where(a => a.CreatedBy == curUser.Id).Select(s => s.Id).ToList();
            List<TbSalesInvoice> lstSalesInvoices = ctx.TbSalesInvoices.Where(x => ListUser.Any(l => l == x.CreatedBy)).ToList();
            return lstSalesInvoices;
        }
    }
}
