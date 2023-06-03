using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using static System.Formats.Asn1.AsnWriter;

#nullable disable

namespace Domains
{
    public partial class TbProduct
    {

        public Guid? ProductId { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم  المنتج  ")]
        public string ProductName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل وصف  المنتج  ")]
        public string ProductDescription { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل سعر  المنتج  ")]
        public string ProductPrice { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل قسم  المنتج  ")]
        public Guid? ProductCategoryId { get; set; }
        public string ProductCategoryName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل بداية  الخصم  ")]
        public DateTime? StartDate { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل نهاية  الخصم  ")]
        public DateTime? EndDate { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل نسبة  الخصم  ")]
        public string DiscountPercent { get; set; }
        public string ProductImage { get; set; }
        public string ProductNewPrice { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Notes { get; set; }
        public int? CurrentState { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل مخزن  المنتج  ")]
        public Guid? StoreId { get; set; }
        public string StoreName { get; set; }
        public int Quantity { get; set; }
      
    }
}
