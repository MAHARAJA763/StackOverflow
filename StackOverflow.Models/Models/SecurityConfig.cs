using System.Collections.Generic;

namespace StackOverflow.Models
{
    public class SecurityConfig
    {
        public string[] AllowedHosts { get; set; }

        public string[] AllowedIps { get; set; }
    }
}

