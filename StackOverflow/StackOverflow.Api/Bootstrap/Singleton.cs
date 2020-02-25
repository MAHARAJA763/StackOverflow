using Microsoft.Extensions.DependencyInjection;
using StackOverflow.Infrastructure.Singleton;
using StackOverflow.BoundedContext.Singleton;
using RxWeb.Core.Data;

namespace StackOverflow.Api.Bootstrap
{
    public static class Singleton
    {
        public static void AddSingletonService(this IServiceCollection serviceCollection)
        {
            #region Singleton
            serviceCollection.AddSingleton<ITenantDbConnectionInfo, TenantDbConnectionInfo>();
            serviceCollection.AddSingleton(typeof(UserAccessConfigInfo));
            #endregion Singleton
        }

    }
}




