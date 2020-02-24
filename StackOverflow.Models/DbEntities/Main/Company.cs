using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("Companies",Schema="dbo")]
    public partial class Company
    {
		#region CompanyId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion CompanyId Annotations

        public int CompanyId { get; set; }

		#region CompanyName Annotations

        [Required]
        [MaxLength(50)]
		#endregion CompanyName Annotations

        public string CompanyName { get; set; }

		#region CompanyContact Annotations

        [Required]
        [MaxLength(50)]
		#endregion CompanyContact Annotations

        public string CompanyContact { get; set; }

		#region CompanyLocation Annotations

        [Required]
        [MaxLength(50)]
		#endregion CompanyLocation Annotations

        public string CompanyLocation { get; set; }

		#region Jobs Annotations

        [InverseProperty("Company")]
		#endregion Jobs Annotations

        public virtual ICollection<Job> Jobs { get; set; }


        public Company()
        {
			Jobs = new HashSet<Job>();
        }
	}
}