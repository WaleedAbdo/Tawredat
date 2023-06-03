using System;

namespace TawredatProject.Models
{
    public class SameProductVM
    {
        public Guid? ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public string ProductPrice { get; set; }
        public string SupplierName { get; set; }
        public string StartsNo { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductNewPrice { get; set; }
        public string ProductImage { get; set; }
        public bool IsFavourit { get; set; }
    }
}
