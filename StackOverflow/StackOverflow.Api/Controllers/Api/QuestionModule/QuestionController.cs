using Microsoft.AspNetCore.Mvc;
using System.Linq;
using StackOverflow.Domain.QuestionModule;
using StackOverflow.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace StackOverflow.Api.Controllers.QuestionModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class QuestionController : BaseDomainController<Question, Question>

    {
        public QuestionController(IQuestionDomain domain):base(domain) {}

    }
}
