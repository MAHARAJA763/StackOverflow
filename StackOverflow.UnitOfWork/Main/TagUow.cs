using RxWeb.Core.Data;
using StackOverflow.BoundedContext.Main;

namespace StackOverflow.UnitOfWork.Main
{
    public class TagUow : BaseUow, ITagUow
    {
        public TagUow(ITagContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface ITagUow : ICoreUnitOfWork { }
}


