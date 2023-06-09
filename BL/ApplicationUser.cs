﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;

namespace BL
{
    public class ApplicationUser : IdentityUser
    {

        public ApplicationUser()
        {
            IsActive = true;
        }

        public bool IsAgree { get; set; }
        public bool IsActive { get; set; }
        public string? OTP { get; set; }

        public string? Image { get; set; }

        public string? FirstName { get; set; }

        public string? FamilyName { get; set; }

        public string? CityName { get; set; }

        public string? CityId { get; set; }


        public string? ClinicName { get; set; }
        public string? Status { get; set; }

        public string? Latitude { get; set; }
        public string? Longitute { get; set; }
        public string? Location { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Notes { get; set; }
        public int? CurrentState { get; set; }


        [NotMapped]
        public string? RoleId { get; set; }
        [NotMapped]
        public string? Role { get; set; }

        [NotMapped]
        public List<SelectListItem>? RoleList { get; set; }


        [NotMapped]
        public List<SelectListItem>? RoleList2 { get; set; }
        [NotMapped]
        public List<string>? RoleList3 { get; set; }


        [NotMapped]
        public IEnumerable<IdentityRole>? RoleListMain { get; set; }


    }
}
