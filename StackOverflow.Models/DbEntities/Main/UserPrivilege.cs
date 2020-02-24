using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("UserPrivileges",Schema="dbo")]
    public partial class UserPrivilege
    {
		#region UserPrivilegeId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion UserPrivilegeId Annotations

        public int UserPrivilegeId { get; set; }

		#region PrivilegeId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Pivileges","dbo","","PrivilegeId")]
		#endregion PrivilegeId Annotations

        public int PrivilegeId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","UserId")]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region Pivilege Annotations

        [ForeignKey(nameof(PrivilegeId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Pivilege.UserPrivileges))]
		#endregion Pivilege Annotations

        public virtual Pivilege Pivilege { get; set; }

		#region User Annotations

        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.User.UserPrivileges))]
		#endregion User Annotations

        public virtual User User { get; set; }


        public UserPrivilege()
        {
        }
	}
}