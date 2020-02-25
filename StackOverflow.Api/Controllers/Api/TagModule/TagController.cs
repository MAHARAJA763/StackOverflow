using Microsoft.AspNetCore.Mvc;
using System.Linq;
using StackOverflow.UnitOfWork.Main;
using StackOverflow.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace StackOverflow.Api.Controllers.TagModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class TagController : BaseController<Tag,Tag,Tag>

    {
        public TagController(ITagUow uow):base(uow) {}

    }
}
