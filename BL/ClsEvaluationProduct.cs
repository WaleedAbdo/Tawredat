using Domains;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public interface EvaluationProductService
    {
        List<TbEvaluationProduct> getAll();
        bool Add(TbEvaluationProduct client);
        bool Edit(TbEvaluationProduct client);
        bool Delete(TbEvaluationProduct client);


    }
    public class ClsEvaluationProduct : EvaluationProductService
    {
        TawredatDbContext ctx;

        public ClsEvaluationProduct(TawredatDbContext context)
        {
            ctx = context;
        }
        public List<TbEvaluationProduct> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbEvaluationProduct> LstEvaluations = ctx.TbEvaluationProducts.ToList();

            return LstEvaluations;
        }

        public bool Add(TbEvaluationProduct item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbEvaluationProducts.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbEvaluationProduct item)
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

        public bool Delete(TbEvaluationProduct item)
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
    }
}
