using System.ComponentModel.DataAnnotations;
using System;

namespace TawredatProject.Models
{
    public class StoreVM
    {
        public Guid? StoreId { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم  المخزن المنتج ")]
        public string? StoreName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل وصف  المخزن المنتج ")]
        public string? StoreDescription { get; set; }
        public string? StoreImage { get; set; }
        public string? CreatedBy { get; set; }
        public string? UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string? Notes { get; set; }
        public int? CurrentState { get; set; }
        [Required(ErrorMessage = "من فضلك المورد المنتج ")]

        public Guid? SupplierId { get; set; }
        public string? SupplierName { get; set; }
    }
}
