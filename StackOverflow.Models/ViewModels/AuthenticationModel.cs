using System.ComponentModel.DataAnnotations;

namespace StackOverflow.Models.ViewModels
{

    public partial class AuthenticationModel
    {
        [Required]
        public string UserName { get; set; }

        [Required]
        public string Password { get; set; }
    }
}

