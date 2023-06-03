using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class ProductVM
    {
        public Guid? ProductId { get; set; }
        public string ProductName { get; set; }
        
        public string ProductDescription { get; set; }
        public string ProductPrice { get; set; }
        public Guid? SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string StartsNo { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductNewPrice { get; set; }
        public string ProductImage { get; set; }
        public bool IsFavourit { get; set; }
        public virtual ICollection<SameProductVM>   SameProducts { get; set; }

    }
    public class SearchTermVM
    {
        public string Search{ get; set; }
    }
   
}
