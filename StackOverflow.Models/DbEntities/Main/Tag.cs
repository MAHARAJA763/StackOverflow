using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("Tags",Schema="dbo")]
    public partial class Tag
    {
		#region TagId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion TagId Annotations

        public int TagId { get; set; }

		#region TagName Annotations

        [Required]
        [MaxLength(50)]
		#endregion TagName Annotations

        public string TagName { get; set; }

		#region TagDetail Annotations

        [Required]
		#endregion TagDetail Annotations

        public string TagDetail { get; set; }

		#region QuestionTags Annotations

        [InverseProperty("Tag")]
		#endregion QuestionTags Annotations

        public virtual ICollection<QuestionTag> QuestionTags { get; set; }


        public Tag()
        {
			QuestionTags = new HashSet<QuestionTag>();
        }
	}
}