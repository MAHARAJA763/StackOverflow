#region Namespace
using Microsoft.Extensions.DependencyInjection;
using StackOverflow.Infrastructure.Security;
using RxWeb.Core.Data;
using RxWeb.Core.Security;
using RxWeb.Core.Annotations;
using RxWeb.Core;
using StackOverflow.UnitOfWork.DbEntityAudit;
using StackOverflow.BoundedContext.Main;
using StackOverflow.UnitOfWork.Main;
#endregion Namespace



namespace StackOverflow.Api.Bootstrap
{
    public static class ScopedExtension
    {

        public static void AddScopedService(this IServiceCollection serviceCollection)
        {
            serviceCollection.AddScoped<IRepositoryProvider, RepositoryProvider>();
            serviceCollection.AddScoped<ITokenAuthorizer, TokenAuthorizer>();
            serviceCollection.AddScoped<IModelValidation, ModelValidation>();
            serviceCollection.AddScoped<IAuditLog, AuditLog>();
            serviceCollection.AddScoped<IApplicationTokenProvider, ApplicationTokenProvider>();
            serviceCollection.AddScoped(typeof(IDbContextManager<>), typeof(DbContextManager<>));

            #region ContextService

            serviceCollection.AddScoped<ILoginContext, LoginContext>();
            serviceCollection.AddScoped<ILoginUow, LoginUow>();
                        serviceCollection.AddScoped<IJobContext, JobContext>();
            serviceCollection.AddScoped<IJobUow, JobUow>();
                        serviceCollection.AddScoped<IJobContext, JobContext>();
            serviceCollection.AddScoped<IJobUow, JobUow>();
            #endregion ContextService





            #region DomainService

            #endregion DomainService
        }
    }
}




