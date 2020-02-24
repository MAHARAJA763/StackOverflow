using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("WorkingUsers",Schema="dbo")]
    public partial class WorkingUser
    {
		#region WorkingUserId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion WorkingUserId Annotations

        public int WorkingUserId { get; set; }

		#region Title Annotations

        [Required]
        [MaxLength(50)]
		#endregion Title Annotations

        public string Title { get; set; }

		#region CompanyName Annotations

        [Required]
        [MaxLength(50)]
		#endregion CompanyName Annotations

        public string CompanyName { get; set; }

		#region JoiningDate Annotations

        [Required]
        [MaxLength(10)]
		#endregion JoiningDate Annotations

        public string JoiningDate { get; set; }

		#region LastWorking Annotations

        [Required]
        [MaxLength(10)]
		#endregion LastWorking Annotations

        public string LastWorking { get; set; }

		#region UserJobPreferenceId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserJobPreferenceId Annotations

        public int UserJobPreferenceId { get; set; }

		#region Description Annotations

        [Required]
		#endregion Description Annotations

        public string Description { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserId Annotations

        public int UserId { get; set; }


        public WorkingUser()
        {
        }
	}
}