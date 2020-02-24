using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("vJobs",Schema="dbo")]
    public partial class vJob
    {

        public string CompanyName { get; set; }


        public string CompanyContact { get; set; }


        public string CompanyLocation { get; set; }


        public string JobLocationName { get; set; }

		#region JobId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion JobId Annotations

        public int JobId { get; set; }


        public string JobTitle { get; set; }


        public string JobDescription { get; set; }


        public string JobDesignation { get; set; }


        public string PayScale { get; set; }


        public string JobType { get; set; }


        public string JobApplyLink { get; set; }


        public string JobTagName { get; set; }


        public vJob()
        {
        }
	}
}