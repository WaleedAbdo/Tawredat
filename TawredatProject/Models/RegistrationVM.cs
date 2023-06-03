using System.ComponentModel.DataAnnotations;

namespace TawredatProject.Models
{
    public class RegistrationVM
    {

        public string UserName { get; set; }

        [Required(ErrorMessage = " Phone Required")]
        public string PhoneNumber { get; set; }

        [Required(ErrorMessage = " Email Required")]
        [EmailAddress(ErrorMessage = "invalid mail formate")]
        public string Email { get; set; }


        [Required(ErrorMessage = " Password Required")]
        [MinLength(6, ErrorMessage = "Min Len 6")]
        [MaxLength(16, ErrorMessage = "Max Len 16")]
        public string Password { get; set; }

        [Required(ErrorMessage = " Confirm Password Required")]
        [MinLength(6, ErrorMessage = "Min Len 6")]
        [MaxLength(16, ErrorMessage = "Max Len 16")]
        [Compare("Password", ErrorMessage = "password not match")]
        public string ConfirmPassword { get; set; }

        public bool IsAgree { get; set; }
    }
}
