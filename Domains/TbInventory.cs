using System;
using System.Collections.Generic;
using System.Text;
using static System.Formats.Asn1.AsnWriter;

namespace Domains
{
    public partial class TbInventory
    {
        public Guid? Id { get; set; }
        public int ProductId { get; set; }
        public TbProduct TbProduct { get; set; }
        public int StoreId { get; set; }
        public TbStore Store { get; set; }
        public int Quantity { get; set; }
        public string? CreatedBy { get; set; }
        public string? UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }

    }
}
