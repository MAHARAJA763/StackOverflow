using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("vTags",Schema="dbo")]
    public partial class vTag
    {
		#region TagId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion TagId Annotations

        public int TagId { get; set; }


        public string TagName { get; set; }


        public string TagDetail { get; set; }


        public vTag()
        {
        }
	}
}