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
    [Table("Answers",Schema="dbo")]
    public partial class Answer
    {
		#region AnswerId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion AnswerId Annotations

        public int AnswerId { get; set; }

		#region QuestionId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Questions","dbo","","QuestionId")]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }

		#region AnswerBody Annotations

        [Required]
		#endregion AnswerBody Annotations

        public string AnswerBody { get; set; }

		#region AnswerDateTime Annotations

        [Required]
		#endregion AnswerDateTime Annotations

        public System.DateTimeOffset AnswerDateTime { get; set; }

		#region AnswerAuthorId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","AnswerAuthorId")]
		#endregion AnswerAuthorId Annotations

        public int AnswerAuthorId { get; set; }


        public Nullable<bool> isAnswerAccepted { get; set; }

		#region Question Annotations

        [ForeignKey(nameof(QuestionId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Question.Answers))]
		#endregion Question Annotations

        public virtual Question Question { get; set; }

		#region User Annotations

        [ForeignKey(nameof(AnswerAuthorId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.User.Answers))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region AnswerVotes Annotations

        [InverseProperty("Answer")]
		#endregion AnswerVotes Annotations

        public virtual ICollection<AnswerVote> AnswerVotes { get; set; }


        public Answer()
        {
			AnswerVotes = new HashSet<AnswerVote>();
        }
	}
}