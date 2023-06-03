using System.ComponentModel.DataAnnotations;
using System;

namespace TawredatProject.Models
{
    public class SupplierReport
    {
        public Guid? SupplierId { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم التاجر   ")]
        public string SupplierName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم قسم التاجر   ")]
        public Guid SupplierCategoryId { get; set; }
        public string SupplierEvaluationStars { get; set; }
        public string SupplierEvaluationNumber { get; set; }
        public string SupplierImage { get; set; }
        public string CustomersNumber { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم المدينة   ")]
        public Guid? SupplierCityId { get; set; }
        public string SupplierCityName { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Notes { get; set; }
        public int? CurrentState { get; set; }
    }
}
