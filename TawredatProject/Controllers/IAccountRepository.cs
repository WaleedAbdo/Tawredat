using BL;
using System.Threading.Tasks;
using TawredatProject.Models;

namespace TawredatProject.Controllers
{
    public interface IAccountRepository
    {


        Task<string> pHONEcON(SignUpModel signUpModel);

        Task<string> SignUpAsync(SignUpModel signUpModel);

        Task<string> LoginAsync(SignInModel signInModel);

        Task<string> ForgotPassword(ForgotPasswordViewModel model);
        Task<string> ResetPassword(string UserId, string codeToken, string Password);
        Task<ApplicationUser> FindByPhoneNumbaer(string PhoneNumber);
        Task<ApplicationUser> FindByOTPNumber(string OTP,string PhoneNumber);

    }
}
