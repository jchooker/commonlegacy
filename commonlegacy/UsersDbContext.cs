using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using commonlegacy.entities;

namespace commonlegacy
{
    public class UsersDbContext : DbContext
    {
        public UsersDbContext() : base("name=con") 
        {
        }

        public DbSet<User> Users { get; set; }
    }
}