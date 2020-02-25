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
    [Table("Questions",Schema="dbo")]
    public partial class Question
    {
		#region QuestionId Annotations

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [System.ComponentModel.DataAnnotations.Key]
		#endregion QuestionId Annotations

        public int QuestionId { get; set; }

		#region QuestionTitle Annotations

        [Required]
		#endregion QuestionTitle Annotations

        public string QuestionTitle { get; set; }

		#region QuestionBody Annotations

        [Required]
		#endregion QuestionBody Annotations

        public string QuestionBody { get; set; }

		#region QuestionDateTime Annotations

        [Required]
		#endregion QuestionDateTime Annotations

        public System.DateTimeOffset QuestionDateTime { get; set; }

		#region QuestionAuthorId Annotations

        [Range(1,int.MaxValue)]
        [Required]
        [RelationshipTableAttribue("Users","dbo","","QuestionAuthorId")]
		#endregion QuestionAuthorId Annotations

        public int QuestionAuthorId { get; set; }

		#region User Annotations

        [ForeignKey(nameof(QuestionAuthorId))]
        [InverseProperty(nameof(StackOverflow.Models.Main.User.Questions))]
		#endregion User Annotations

        public virtual User User { get; set; }

		#region Answers Annotations

        [InverseProperty("Question")]
		#endregion Answers Annotations

        public virtual ICollection<Answer> Answers { get; set; }

		#region QuestionVotes Annotations

        [InverseProperty("Question")]
		#endregion QuestionVotes Annotations

        public virtual ICollection<QuestionVote> QuestionVotes { get; set; }

		#region QuestionTags Annotations

        [InverseProperty("Question")]
		#endregion QuestionTags Annotations

        public virtual ICollection<QuestionTag> QuestionTags { get; set; }


        public Question()
        {
			Answers = new HashSet<Answer>();
			QuestionVotes = new HashSet<QuestionVote>();
			QuestionTags = new HashSet<QuestionTag>();
        }
	}
}