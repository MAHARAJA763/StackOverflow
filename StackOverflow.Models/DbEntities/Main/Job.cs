using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("Jobs",Schema="dbo")]
    public partial class Job
    {
		#region JobId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion JobId Annotations

        public int JobId { get; set; }

		#region JobTitle Annotations

        [Required]
		#endregion JobTitle Annotations

        public string JobTitle { get; set; }

		#region JobDescription Annotations

        [Required]
		#endregion JobDescription Annotations

        public string JobDescription { get; set; }

		#region JobDesignation Annotations

        [Required]
        [MaxLength(50)]
		#endregion JobDesignation Annotations

        public string JobDesignation { get; set; }

		#region PayScale Annotations

        [Required]
        [MaxLength(50)]
		#endregion PayScale Annotations

        public string PayScale { get; set; }

		#region JobType Annotations

        [Required]
        [MaxLength(50)]
		#endregion JobType Annotations

        public string JobType { get; set; }

		#region JobApplyLink Annotations

        [Required]
        [MaxLength(50)]
		#endregion JobApplyLink Annotations

        public string JobApplyLink { get; set; }

		#region CompanyId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Companies","dbo","","CompanyId")]
		#endregion CompanyId Annotations

        public int CompanyId { get; set; }

		#region Company Annotations

        [ForeignKey(nameof(CompanyId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Company.Jobs))]
		#endregion Company Annotations

        public virtual Company Company { get; set; }

		#region JobLocations Annotations

        [InverseProperty("Job")]
		#endregion JobLocations Annotations

        public virtual ICollection<JobLocation> JobLocations { get; set; }

		#region JobPreferences Annotations

        [InverseProperty("Job")]
		#endregion JobPreferences Annotations

        public virtual ICollection<JobPreference> JobPreferences { get; set; }


        public Job()
        {
			JobLocations = new HashSet<JobLocation>();
			JobPreferences = new HashSet<JobPreference>();
        }
	}
}