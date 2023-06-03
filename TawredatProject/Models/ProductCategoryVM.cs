using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class ProductCategoryVM
    {
        public Guid? ProductCategoryId { get; set; }
      
        public string ProductCategoryName { get; set; }
      
        public string ProductCategoryDescription { get; set; }
        public string ProductCategoryImage { get; set; }

        public List<ProductVM> products { get; set; }
      
    }
}
