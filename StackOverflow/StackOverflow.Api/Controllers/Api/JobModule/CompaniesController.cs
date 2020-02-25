using Microsoft.AspNetCore.Mvc;
using System.Linq;
using StackOverflow.UnitOfWork.Main;
using StackOverflow.Models.Main;
using RxWeb.Core.AspNetCore;
using RxWeb.Core.Security.Authorization;

namespace StackOverflow.Api.Controllers.JobModule
{
    [ApiController]
    [Route("api/[controller]")]
	
	public class CompaniesController : BaseController<Company,Company,Company>

    {
        public CompaniesController(IJobUow uow):base(uow) {}

    }
}
