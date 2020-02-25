using RxWeb.Core.Data;
using StackOverflow.BoundedContext.Main;

namespace StackOverflow.UnitOfWork.Main
{
    public class JobUow : BaseUow, IJobUow
    {
        public JobUow(IJobContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface IJobUow : ICoreUnitOfWork { }
}


