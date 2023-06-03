using System;

namespace TawredatProject.Models
{
    public class SubscriptionRequestVM
    {
        // public Guid? RequestId { get; set; }
        public Guid? RequestId { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime ?CreatedDate { get; set; }
        public DateTime ?UpdatedDate { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string Email { get; set; }
        public string SubscriberName { get; set; }
        public Guid? CityId { get; set; }
        public string ClinicName { get; set; }
    }
}
