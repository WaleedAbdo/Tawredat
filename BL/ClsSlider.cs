using Domains;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public interface SliderService
    {
        List<TbSlider> getAll( );
        bool Add(TbSlider client);
        bool Edit(TbSlider client);
        bool Delete(TbSlider client);

        List<TbSlider> GetSliderAfterLogin();
        List<TbSlider> GetSliderBeforeLogin();

    }
    public class ClsSlider : SliderService
    {
        TawredatDbContext ctx;

        public ClsSlider(TawredatDbContext context)
        {
            ctx = context;
        }
        public List<TbSlider> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbSlider> lstSliders = ctx.TbSliders.ToList();

            return lstSliders;
        }

        public bool Add(TbSlider item)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
                item.CurrentState = 1;
                ctx.TbSliders.Add(item);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbSlider item)
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

        public bool Delete(TbSlider item)
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

        public List<TbSlider> GetSliderBeforeLogin()
        {
            List<TbSlider> lstSliders = ctx.TbSliders.Where(x=>x.Type==true).ToList();

            return lstSliders;
        }
        public List<TbSlider> GetSliderAfterLogin()
        {
            List<TbSlider> lstSliders = ctx.TbSliders.Where(x => x.Type == false).ToList();

            return lstSliders;
        }
    }
}
