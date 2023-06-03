using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class SupplierProductVM
    {
        public Guid? SupplierId { get; set; }
        public string ProductMaximumSaleQty { get; set; }
        public string SupplierName { get; set; }
        public string SupplierImage { get; set; }
        public string CustomersNumber { get; set; }
        public string SupplierEvaluationStars { get; set; }
        public string SupplierEvaluationNumber { get; set; }
        public Guid? ProductCategoryId { get; set; }
        public List<EvaluationSupplierGetVM> Evaluation { get; set; }
        public List<ProductCategoryVM> ProductCategory { get; set; }
 
     
    }
}
