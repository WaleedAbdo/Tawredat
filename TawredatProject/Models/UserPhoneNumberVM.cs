using System.ComponentModel.DataAnnotations;

namespace TawredatProject.Models
{
    public class UserPhoneNumberVM
    {
        [Required(ErrorMessage = " Phone Required")]
        public string PhoneNumber { get; set; }
    }
    public class UserOTPVM
    {
        [Required(ErrorMessage = " OTP Required")]
        public string OTP { get; set; }
        [Required(ErrorMessage = " Phone Required")]
        public string PhoneNumber { get; set; }
    }
    public class UserNewPasswordVM
    {
        [Required(ErrorMessage = " NewPassword Required")]
        public string NewPassword { get; set; }
        public string ComfirmPassword { get; set; }
    }
    public class ChangePasswordVM
    {
        [Required(ErrorMessage = " OldPassword Required")]
        public string OldPassword { get; set; }
        [Required(ErrorMessage = " NewPassword Required")]
        public string NewPassword { get; set; }
        public string ComfirmPassword { get; set; }
    }
}
