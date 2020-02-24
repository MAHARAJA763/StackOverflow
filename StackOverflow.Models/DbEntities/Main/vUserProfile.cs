using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("vUserProfiles",Schema="dbo")]
    public partial class vUserProfile
    {
		#region UserId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion UserId Annotations

        public int UserId { get; set; }


        public string DisplayName { get; set; }


        public string Email { get; set; }


        public string AboutMe { get; set; }


        public string Location { get; set; }


        public string WebsitLink { get; set; }


        public string TwitterUserName { get; set; }


        public string GithubUsername { get; set; }


        public Nullable<int> Score { get; set; }


        public Nullable<int> Reputation { get; set; }


        public string ProfileImage { get; set; }


        public vUserProfile()
        {
        }
	}
}