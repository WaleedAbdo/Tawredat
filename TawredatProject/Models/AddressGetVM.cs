using System;

namespace TawredatProject.Models
{
    public class AddressGetVM
    {
        public Guid? AddressId { get; set; }
        public string userid{ get; set; }
        public string cityName { get; set; }    
        public string Location { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }

    }
}
