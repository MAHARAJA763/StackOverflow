using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("StudentUsers",Schema="dbo")]
    public partial class StudentUser
    {
		#region StudentUserId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion StudentUserId Annotations

        public int StudentUserId { get; set; }

		#region Degree Annotations

        [Required]
        [MaxLength(50)]
		#endregion Degree Annotations

        public string Degree { get; set; }

		#region UniversityName Annotations

        [Required]
        [MaxLength(50)]
		#endregion UniversityName Annotations

        public string UniversityName { get; set; }

		#region From Annotations

        [Required]
        [MaxLength(10)]
		#endregion From Annotations

        public string From { get; set; }

		#region To Annotations

        [Required]
        [MaxLength(10)]
		#endregion To Annotations

        public string To { get; set; }

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


        public StudentUser()
        {
        }
	}
}