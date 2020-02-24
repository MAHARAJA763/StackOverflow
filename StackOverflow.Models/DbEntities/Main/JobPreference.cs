using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("JobPreferences",Schema="dbo")]
    public partial class JobPreference
    {
		#region JobPreferenceId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion JobPreferenceId Annotations

        public int JobPreferenceId { get; set; }

		#region JobId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Jobs","dbo","","JobId")]
		#endregion JobId Annotations

        public int JobId { get; set; }

		#region JobTagId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("JobTags","dbo","","JobTagId")]
		#endregion JobTagId Annotations

        public int JobTagId { get; set; }

		#region Job Annotations

        [ForeignKey(nameof(JobId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Job.JobPreferences))]
		#endregion Job Annotations

        public virtual Job Job { get; set; }

		#region JobTag Annotations

        [ForeignKey(nameof(JobTagId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.JobTag.JobPreferences))]
		#endregion JobTag Annotations

        public virtual JobTag JobTag { get; set; }


        public JobPreference()
        {
        }
	}
}