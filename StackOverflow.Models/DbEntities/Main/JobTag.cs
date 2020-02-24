using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("JobTags",Schema="dbo")]
    public partial class JobTag
    {
		#region JobTagId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion JobTagId Annotations

        public int JobTagId { get; set; }

		#region JobTagName Annotations

        [Required]
        [MaxLength(50)]
		#endregion JobTagName Annotations

        public string JobTagName { get; set; }

		#region JobPreferences Annotations

        [InverseProperty("JobTag")]
		#endregion JobPreferences Annotations

        public virtual ICollection<JobPreference> JobPreferences { get; set; }


        public JobTag()
        {
			JobPreferences = new HashSet<JobPreference>();
        }
	}
}