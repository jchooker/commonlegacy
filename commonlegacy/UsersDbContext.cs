using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using commonlegacy.entities;
using System.Data.SQLite;
using System.Runtime.Remoting.Contexts;
using System.Data.Entity.Migrations;

namespace commonlegacy
{
    //class UsersDbContext : DbContext
    public class UsersDbContext : DbContext
    {
        //static UsersDbContext()         
        public UsersDbContext() : base("name=con")
        {
            //Database.SetInitializer(new MigrateDatabaseToLatestVersion<UsersDbContext, ContextMigrationConfiguration>(true));
        }

        public DbSet<User> Users { get; set; }
    }
    //internal sealed class ContextMigrationConfiguration : DbMigrationsConfiguration<UsersDbContext>
    //{
    //    public ContextMigrationConfiguration()
    //    {
    //        AutomaticMigrationsEnabled = true;
    //        AutomaticMigrationDataLossAllowed = true;
    //        SetSqlGenerator("System.Data.SQLite", new SQLiteMigrationSqlGenerator());
    //    }
    //}
}