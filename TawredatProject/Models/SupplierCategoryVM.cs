using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TawredatProject.Models
{
    public class SupplierCategoryVM
    {
        public string? SupplierCategoryName { get; set; }
        //[Required(ErrorMessage = "من فضلك ادخل وصف  قسم التاجر ")]
        public string? SupplierCategoryDescription { get; set; }
        public Guid? SupplierCategoryId { get; set; }
        public List<SupplierVM> suppliers { get; set; }

    }
    public class SupplierVM
    {
        public Guid? SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string SupplierCategoryName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم قسم التاجر   ")]
        public Guid SupplierCategoryId { get; set; }
        public string SupplierEvaluationStars { get; set; }
        public string SupplierEvaluationText { get; set; }
        public string SupplierImage { get; set; }
        public string CustomersNumber { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم المدينة   ")]
        public Guid? SupplierCityId { get; set; }
        public string SupplierCityName { get; set; }
        
    }
    public class SupplierSearchVM
    {
        public Guid? SupplierId { get; set; }
    }
    //public class produVM
}
