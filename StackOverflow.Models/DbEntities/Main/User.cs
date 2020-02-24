using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("Users",Schema="dbo")]
    public partial class User
    {
		#region UserId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion UserId Annotations

        public int UserId { get; set; }

		#region DisplayName Annotations

        [Required]
        [MaxLength(30)]
		#endregion DisplayName Annotations

        public string DisplayName { get; set; }

		#region Email Annotations

        [Required]
        [MaxLength(30)]
		#endregion Email Annotations

        public string Email { get; set; }

		#region Password Annotations

        [Required]
        [MaxLength(132)]
		#endregion Password Annotations

        public string Password { get; set; }

		#region Questions Annotations

        [InverseProperty("User")]
		#endregion Questions Annotations

        public virtual ICollection<Question> Questions { get; set; }

		#region Reputations Annotations

        [InverseProperty("User")]
		#endregion Reputations Annotations

        public virtual ICollection<Reputation> Reputations { get; set; }

		#region Scores Annotations

        [InverseProperty("User")]
		#endregion Scores Annotations

        public virtual ICollection<Score> Scores { get; set; }

		#region Answers Annotations

        [InverseProperty("User")]
		#endregion Answers Annotations

        public virtual ICollection<Answer> Answers { get; set; }

        public virtual ICollection<ApplicationUserToken> ApplicationUserTokens { get; set; }

        public virtual ICollection<UserRole> UserRoles { get; set; }

		#region UserPrivileges Annotations

        [InverseProperty("User")]
		#endregion UserPrivileges Annotations

        public virtual ICollection<UserPrivilege> UserPrivileges { get; set; }

        
        public User()
        {
			Questions = new HashSet<Question>();
			Reputations = new HashSet<Reputation>();
			Scores = new HashSet<Score>();
			Answers = new HashSet<Answer>();
			UserPrivileges = new HashSet<UserPrivilege>();
        }
	}
}