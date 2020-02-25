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
    [Table("QuestionTags",Schema="dbo")]
    public partial class QuestionTag
    {
		#region QuestionTagId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
        [RelationshipTableAttribue("Tags","dbo","","QuestionTagId")]
		#endregion QuestionTagId Annotations

        public int QuestionTagId { get; set; }

		#region TagId Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion TagId Annotations

        public int TagId { get; set; }

		#region QuestionId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Questions","dbo","","QuestionId")]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }

		#region Question Annotations

        [ForeignKey(nameof(QuestionId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Question.QuestionTags))]
		#endregion Question Annotations

        public virtual Question Question { get; set; }

		#region Tag Annotations

        [ForeignKey(nameof(QuestionTagId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Tag.QuestionTags))]
		#endregion Tag Annotations

        public virtual Tag Tag { get; set; }


        public QuestionTag()
        {
        }
	}
}