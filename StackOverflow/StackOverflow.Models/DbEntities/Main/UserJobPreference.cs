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
    [Table("UserJobPreferences",Schema="dbo")]
    public partial class UserJobPreference
    {
		#region UserJobPreferenceId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserJobPreferenceId Annotations

        public int UserJobPreferenceId { get; set; }

		#region JobTagId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion JobTagId Annotations

        public int JobTagId { get; set; }

		#region UserId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion UserId Annotations

        public int UserId { get; set; }


        public UserJobPreference()
        {
        }
	}
}