using Domains;
using Microsoft.EntityFrameworkCore;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BL
{
    public interface RequestService
    {
        List<TbSubscriptionRequest> getAll();
        bool Add(TbSubscriptionRequest client);
        bool Edit(TbSubscriptionRequest client);
        bool Delete(TbSubscriptionRequest client);


    }
    public class ClsRequest : RequestService
    {
        TawredatDbContext ctx;

        public ClsRequest(TawredatDbContext context)
        {
            ctx = context;
        }
        public List<TbSubscriptionRequest> getAll()
        {
            //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
            List<TbSubscriptionRequest> lstRequest = ctx.TbSubscriptionRequest.ToList();

            return lstRequest;
        }

        public bool Add(TbSubscriptionRequest Request)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();
               // item.CurrentState = 1;
                ctx.TbSubscriptionRequest.Add(Request);
                ctx.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }
        public bool Edit(TbSubscriptionRequest Request)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();

                ctx.Entry(Request).State = EntityState.Modified;
                ctx.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;

            }
        }

        public bool Delete(TbSubscriptionRequest Request)
        {
            try
            {
                //_4ZsoftwareCompanyTestTaskContext o_4ZsoftwareCompanyTestTaskContext = new _4ZsoftwareCompanyTestTaskContext();

                ctx.Entry(Request).State = EntityState.Deleted;
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
