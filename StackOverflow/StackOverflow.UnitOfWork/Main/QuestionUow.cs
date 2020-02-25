using RxWeb.Core.Data;
using StackOverflow.BoundedContext.Main;

namespace StackOverflow.UnitOfWork.Main
{
    public class QuestionUow : BaseUow, IQuestionUow
    {
        public QuestionUow(IQuestionContext context, IRepositoryProvider repositoryProvider) : base(context, repositoryProvider) { }
    }

    public interface IQuestionUow : ICoreUnitOfWork { }
}


