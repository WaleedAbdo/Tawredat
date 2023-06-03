using System.ComponentModel.DataAnnotations;

namespace TawredatProject.Models
{
    public class LoginVM
    {

        [Required(ErrorMessage = " Phone Required")]
        public string PhoneNumber { get; set; }

        [Required(ErrorMessage = " Password Required")]
        [MinLength(6, ErrorMessage = "Min Len 6")]
        [MaxLength(20, ErrorMessage = "Max Len 20")]
        public string Password { get; set; }

        public bool RememberMe { get; set; }

    }

}
