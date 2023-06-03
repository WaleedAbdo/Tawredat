using System;

namespace TawredatProject.Models
{
    public class FavouriteGetVM
    {
        public Guid? ProductId { get; set; }

        public string ProductName { get; set; }
        public string ProductImage { get; set; }
      
        public string SupplierName { get; set; }
        public string ProductEvaluationStarts { get; set; }
        public string ProductEvaluationText { get; set; }
        public string ProductPrice { get; set; }
        
    }
}
