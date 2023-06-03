using System.Collections.Generic;
using System;

namespace TawredatProject.Models
{
    public class OfferCategory
    {
        public Guid? ProductCategoryId { get; set; }

        public string ProductCategoryName { get; set; }

        public string ProductCategoryDescription { get; set; }
        public string ProductCategoryImage { get; set; }

        public List<OfferVM> products { get; set; }
    }
}
