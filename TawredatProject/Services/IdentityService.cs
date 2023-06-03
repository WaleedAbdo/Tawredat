using BL;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;
namespace TawredatProject.Services
{
    public class IdentityService : IIdentityService
    {
        private readonly UserManager<ApplicationUser> _userManager;



        public IdentityService( UserManager<ApplicationUser> userManager )
        {
            _userManager = userManager;
        }

        public async Task<string> GenerateToken(ApplicationUser user)
        {

           // string secretKey = "PDv7DrqznYL6nv7DrqzjnQYO9JxIsWdcjnQYL6nu0f";
          //  var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("cf92fb21-1adb-4432-8b07-078404531cee"));

           // var tokenHandler = new JwtSecurityTokenHandler();
          //  var key = Encoding.ASCII.GetBytes(secretKey);

            var claims = new List<Claim>
            {
                    new Claim(ClaimTypes.NameIdentifier, user.Id),
                    new Claim(ClaimTypes.Email, user.Email),
                    new Claim(ClaimTypes.GivenName, user.UserName),
                    new Claim(ClaimTypes.Surname, user.UserName),
            };
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("cf92fb21-1adb-4432-8b07-078404531cee"));
            var credentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var token = new JwtSecurityToken(
                issuer: "MyApplicationName",
                audience: "postman",//it could be "com.mycompany.myapp" in case of mobile app or a link in case of web app, or you can disable it from program.cs.
                claims: claims,
                expires: DateTime.Now.AddDays(30),
                signingCredentials: credentials);

            var Token = new JwtSecurityTokenHandler().WriteToken(token);
            return Token;


        }
        public async Task<bool> ResetPasswordAsync(ApplicationUser user , string Token ,string NewPassword )
        {
            try
            {
                var result = _userManager.ResetPasswordAsync(user, Token, NewPassword);

                if (result.Result.Succeeded)
                    return true;
                else
                    return false;       
            }
            catch (Exception)
            {
              

                throw;
            }
          
        }


        


    }
}
