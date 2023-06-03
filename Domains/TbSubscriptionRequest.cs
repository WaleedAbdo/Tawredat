using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Domains
{
    public partial class TbSubscriptionRequest
    {
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity), Key()]
        public Guid? RequestId { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime? CreatedDate { get; set; }

        public DateTime ?UpdatedDate { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string Email { get; set; }
        public string SubscriberName { get; set; }
        public string CityName { get; set; }
        public string ClinicName { get; set; }



    }
}
