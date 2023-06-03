using Domains;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public interface ProductCategoryService
    {
        List<TbProductCategory> getAll();
        bool Add(TbProductCategory client);
        bool Edit(TbProductCategory client);
        bool Delete(TbProductCategory client);
        Task<TbProductCategory> GetByIdAsync(int ProductCategoryId);
        
    }
    public class ClsProductCategory : ProductCategoryService
    {
        TawredatDbContext ctx;

        public ClsProductCategory(TawredatDbContext context)
        {
            ctx = context;
        }
        public List<TbProductCategory> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbProductCategory> lstAboutApps = ctx.TbProductCategories.ToList();

            return lstAboutApps;
        }

        public bool Add(TbProductCategory item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbProductCategories.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbProductCategory item)
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

        public bool Delete(TbProductCategory item)
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
        public async Task<TbProductCategory> GetByIdAsync(int ProductCategoryId)
        {
            return await ctx.TbProductCategories.FindAsync(ProductCategoryId);
        }
    }
}
