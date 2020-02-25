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
    [Table("QuestionVotes",Schema="dbo")]
    public partial class QuestionVote
    {
		#region QuestionVoteId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion QuestionVoteId Annotations

        public int QuestionVoteId { get; set; }


        public Nullable<int> QuestionUpVote { get; set; }


        public Nullable<int> QuestionDownVote { get; set; }

		#region QuestionId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Questions","dbo","","QuestionId")]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }

		#region Question Annotations

        [ForeignKey(nameof(QuestionId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.Question.QuestionVotes))]
		#endregion Question Annotations

        public virtual Question Question { get; set; }


        public QuestionVote()
        {
        }
	}
}