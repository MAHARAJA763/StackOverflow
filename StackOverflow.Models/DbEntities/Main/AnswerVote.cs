using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("AnswerVotes",Schema="dbo")]
    public partial class AnswerVote
    {
		#region AnswerVoteId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion AnswerVoteId Annotations

        public int AnswerVoteId { get; set; }

		#region AnswerUpVote Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion AnswerUpVote Annotations

        public int AnswerUpVote { get; set; }

		#region AnswerDownVote Annotations

        [Range(1,int.MaxValue)]
        [Required]
		#endregion AnswerDownVote Annotations

        public int AnswerDownVote { get; set; }

		#region AnswerId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Answers","dbo","","AnswerId")]
		#endregion AnswerId Annotations

        public int AnswerId { get; set; }

		#region Answer Annotations

        [ForeignKey(nameof(AnswerId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Answer.AnswerVotes))]
		#endregion Answer Annotations

        public virtual Answer Answer { get; set; }


        public AnswerVote()
        {
        }
	}
}