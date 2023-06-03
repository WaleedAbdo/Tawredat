using System.ComponentModel.DataAnnotations;
using System;

namespace TawredatProject.Models
{
    public class CityVM
    {
        public Guid? CityId { get; set; }
        [Required(ErrorMessage = "من فضلك ادخل اسم المدينة   ")]
        public string CityName { get; set; }
        //public string CreatedBy { get; set; }
        //public string UpdatedBy { get; set; }
        //public DateTime? CreatedDate { get; set; }
        //public DateTime? UpdatedDate { get; set; }
        //public string Notes { get; set; }
        //public int? CurrentState { get; set; }
    }
}
