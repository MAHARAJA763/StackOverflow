using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("UserDetails",Schema="dbo")]
    public partial class UserDetail
    {
		#region UserDetailId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion UserDetailId Annotations

        public int UserDetailId { get; set; }

		#region FullName Annotations

        [MaxLength(50)]
		#endregion FullName Annotations

        public string FullName { get; set; }

		#region ProfileImage Annotations

        [MaxLength(50)]
		#endregion ProfileImage Annotations

        public string ProfileImage { get; set; }


        public string AboutMe { get; set; }

		#region Location Annotations

        [MaxLength(50)]
		#endregion Location Annotations

        public string Location { get; set; }


        public string WebsitLink { get; set; }

		#region GithubUsername Annotations

        [MaxLength(50)]
		#endregion GithubUsername Annotations

        public string GithubUsername { get; set; }

		#region TwitterUserName Annotations

        [MaxLength(50)]
		#endregion TwitterUserName Annotations

        public string TwitterUserName { get; set; }

		#region UserOccupationId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserOccupationId Annotations

        public int UserOccupationId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserId Annotations

        public int UserId { get; set; }


        public UserDetail()
        {
        }
	}
}