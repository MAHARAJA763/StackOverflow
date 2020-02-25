using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.Models.Enums.Main;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("JobLocations",Schema="dbo")]
    public partial class JobLocation
    {
		#region JobLocationId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion JobLocationId Annotations

        public int JobLocationId { get; set; }

		#region JobLocationName Annotations

        [Required]
        [MaxLength(50)]
		#endregion JobLocationName Annotations

        public string JobLocationName { get; set; }

		#region JobId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Jobs","dbo","","JobId")]
		#endregion JobId Annotations

        public int JobId { get; set; }

		#region Job Annotations

        [ForeignKey(nameof(JobId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Job.JobLocations))]
		#endregion Job Annotations

        public virtual Job Job { get; set; }


        public JobLocation()
        {
        }
	}
}