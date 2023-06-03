using BL;
using System.Threading.Tasks;

namespace TawredatProject.Services
{
    public interface IIdentityService
    {
        Task<string> GenerateToken(ApplicationUser user);
        //Task<UserId> GetUserId(this ClaimsPrincipal user);
        Task<bool> ResetPasswordAsync(ApplicationUser user, string Token, string NewPassword);
    }
}
