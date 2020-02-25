using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using RxWeb.Core.Annotations;
using RxWeb.Core.Data.Annotations;
using RxWeb.Core.Sanitizers;
using StackOverflow.BoundedContext.SqlContext;
namespace StackOverflow.Models.Main
{
    [Table("vQuestions",Schema="dbo")]
    public partial class vQuestion
    {
		#region QuestionId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }


        public string QuestionTitle { get; set; }


        public string QuestionBody { get; set; }


        public System.DateTimeOffset QuestionDateTime { get; set; }


        public string DisplayName { get; set; }


        public int QuestionTagId { get; set; }


        public Nullable<int> QuestionUpVote { get; set; }


        public Nullable<int> QuestionDownVote { get; set; }


        public vQuestion()
        {
        }
	}
}