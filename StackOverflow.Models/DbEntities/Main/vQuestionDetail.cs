using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("vQuestionDetails",Schema="dbo")]
    public partial class vQuestionDetail
    {
		#region QuestionId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }


        public int AnswerId { get; set; }


        public string AnswerBody { get; set; }


        public System.DateTimeOffset AnswerDateTime { get; set; }


        public int AnswerAuthorId { get; set; }


        public Nullable<bool> isAnswerAccepted { get; set; }


        public int AnswerUpVote { get; set; }


        public int AnswerDownVote { get; set; }


        public string QuestionTitle { get; set; }


        public string QuestionBody { get; set; }


        public System.DateTimeOffset QuestionDateTime { get; set; }


        public int QuestionAuthorId { get; set; }


        public Nullable<int> QuestionUpVote { get; set; }


        public Nullable<int> QuestionDownVote { get; set; }


        public int UserId { get; set; }


        public string DisplayName { get; set; }


        public vQuestionDetail()
        {
        }
	}
}