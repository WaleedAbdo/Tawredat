using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using RestSharp;

namespace TawredatProject.Helpers
{
    public class ApiResponse<T>
    {
        public string Code { get; set; }
        public bool Status { get; set; }
        public string Message { get; set; }
        public T data { get; set; }
        public T Exceptions { get; set; }
    }

  
}
