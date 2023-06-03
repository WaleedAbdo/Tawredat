using System.ComponentModel.DataAnnotations;
using System;

namespace TawredatProject.Models
{
    public class OfferVM
    {
        public Guid? ProductId { get; set; }

        public string ProductName { get; set; }
        public string ProductImage { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم التاجر   ")]
      
        public string SupplierName { get; set; }
        [Required(ErrorMessage = "من فضلك اسعر قبل العرض   ")]
        public string PriceBeforeOffer { get; set; }
        [Required(ErrorMessage = "من فضلك اسعر بعد العرض   ")]
        public string PriceAfterOffer { get; set; }
        public bool IsFavourit { get; set; }
        public string ProductCategoryName { get; set; }
        public string ProductEvaluationStarts { get; set; }
        public string ProductEvaluationNumber { get; set; }
       
    }
}
