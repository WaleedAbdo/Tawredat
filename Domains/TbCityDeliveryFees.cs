﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Domains
{
    public partial class TbCityDeliveryFees
    {
        public Guid? CityDeliveryFeesId { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم المدينة   ")]
        public Guid? CityId { get; set; }
      
        public string? CityName { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل قيمة الشحن   ")]
        public string? DeliveryFees { get; set; }
        public string? CreatedBy { get; set; }
        public string? UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string? Notes { get; set; }
        public int? CurrentState { get; set; }
    }
}
