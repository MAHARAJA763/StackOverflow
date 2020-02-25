using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using RxWeb.Core;
using StackOverflow.UnitOfWork.Main;
using StackOverflow.Models.Main;
using RxWeb.Core.Data;
using StackOverflow.BoundedContext.SqlContext;
using Microsoft.Data.SqlClient;
using StackOverflow.Models.ViewModels;

namespace StackOverflow.Domain.QuestionModule
{
    public class QuestionDomain : IQuestionDomain
    {
        private IDbContextManager<MainSqlDbContext> DbContextManager { get; set; }

        public QuestionDomain(IQuestionUow uow, IDbContextManager<MainSqlDbContext> dbContextManager) {
            this.Uow = uow;
            DbContextManager = dbContextManager;
        }

        public Task<object> GetAsync(Question parameters)
        {
            throw new NotImplementedException();
        }

        public Task<object> GetBy(Question parameters)
        {
            throw new NotImplementedException();
        }
        

        public HashSet<string> AddValidation(Question entity)
        {
            return ValidationMessages;
        }

        public async Task AddAsync(Question entity)
        {
            await DbContextManager.BeginTransactionAsync();
            var spParameter = new SqlParameter[3];
            spParameter[0] = new SqlParameter()
            {
                ParameterName = "QuestionTitle",
                Value = entity.QuestionTitle
            };
            spParameter[1] = new SqlParameter()
            {
                ParameterName = "QuestionBody",
                Value = entity.QuestionBody
            };
            spParameter[2] = new SqlParameter()
            {
                ParameterName = "QuestionAuthorId",
                Value = entity.QuestionAuthorId
            };
           
           await DbContextManager.StoreProc<StoreProcResult>("[dbo].spInsertQuestion", spParameter);
            try
            {
                await DbContextManager.CommitAsync();
            }
            catch (Exception e)

            {
                DbContextManager.RollbackTransaction();
            }







        }

        public HashSet<string> UpdateValidation(Question entity)
        {
            return ValidationMessages;
        }

        public async Task UpdateAsync(Question entity)
        {
            await Uow.RegisterDirtyAsync(entity);
            await Uow.CommitAsync();
        }

        public HashSet<string> DeleteValidation(Question parameters)
        {
            return ValidationMessages;
        }

        public Task DeleteAsync(Question parameters)
        {
            throw new NotImplementedException();
        }

        public IQuestionUow Uow { get; set; }

        private HashSet<string> ValidationMessages { get; set; } = new HashSet<string>();
    }

    public interface IQuestionDomain : ICoreDomain<Question, Question> { }
}
