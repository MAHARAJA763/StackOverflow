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
    [Table("Pivileges",Schema="dbo")]
    public partial class Pivilege
    {
		#region PrivilegeId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion PrivilegeId Annotations

        public int PrivilegeId { get; set; }

		#region PrivilegeName Annotations

        [Required]
        [MaxLength(50)]
		#endregion PrivilegeName Annotations

        public string PrivilegeName { get; set; }

		#region PrivilegeTypeId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion PrivilegeTypeId Annotations

        public int PrivilegeTypeId { get; set; }

		#region RequiredReputation Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion RequiredReputation Annotations

        public int RequiredReputation { get; set; }

		#region UserPrivileges Annotations

        [InverseProperty("Pivilege")]
		#endregion UserPrivileges Annotations

        public virtual ICollection<UserPrivilege> UserPrivileges { get; set; }


        public Pivilege()
        {
			UserPrivileges = new HashSet<UserPrivilege>();
        }
	}
}