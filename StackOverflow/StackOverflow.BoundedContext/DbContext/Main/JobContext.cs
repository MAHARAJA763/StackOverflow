using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using StackOverflow.BoundedContext.SqlContext;
using StackOverflow.Models.Main;
using StackOverflow.Models;
using StackOverflow.BoundedContext.Singleton;
using RxWeb.Core.Data;
using RxWeb.Core.Data.Models;
using RxWeb.Core.Data.BoundedContext;

namespace StackOverflow.BoundedContext.Main
{
    public class JobContext : BaseBoundedContext, IJobContext
    {
        public JobContext(MainSqlDbContext sqlDbContext,  IOptions<DatabaseConfig> databaseConfig, IHttpContextAccessor contextAccessor,ITenantDbConnectionInfo tenantDbConnection): base(sqlDbContext, databaseConfig.Value, contextAccessor,tenantDbConnection){ }

            #region DbSets
            		public DbSet<Job> Job { get; set; }
		public DbSet<JobLocation> JobLocation { get; set; }
		public DbSet<JobPreference> JobPreference { get; set; }
		public DbSet<JobTag> JobTag { get; set; }
		public DbSet<vJob> vJob { get; set; }
            		public DbSet<Company> Company { get; set; }
            #endregion DbSets



    }


    public interface IJobContext : IDbContext
    {
    }
}

