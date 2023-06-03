using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class GetChargeVM
    {
        public Guid? ChargeId { get; set; }

        public string Id { get; set; }
        public string ChargeType { get; set; }

        public string ChargeValue { get; set; }

        public string CreatedDate { get; set; }
        public string Notes { get; set; }
        // public string walletbalance { get; set; }


    }
    public class walletbalance
    {
        public decimal Balance { get; set; }
        public virtual ICollection<GetChargeVM> ChargeVM { get; set; }
    }
}
