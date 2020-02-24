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
    public class TagContext : BaseBoundedContext, ITagContext
    {
        public TagContext(MainSqlDbContext sqlDbContext,  IOptions<DatabaseConfig> databaseConfig, IHttpContextAccessor contextAccessor,ITenantDbConnectionInfo tenantDbConnection): base(sqlDbContext, databaseConfig.Value, contextAccessor,tenantDbConnection){ }

            #region DbSets
            		public DbSet<Tag> Tags { get; set; }
            		public DbSet<Question> Question { get; set; }
            		public DbSet<vTag> vTags { get; set; }
            #endregion DbSets




    }


    public interface ITagContext : IDbContext
    {
    }
}

