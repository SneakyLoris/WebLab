using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebLab
{
    public class PostContext : DbContext
    {
        public PostContext() : base("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Users161;Integrated Security=True;Connect Timeout=30;Encrypt=False;")
        { }
        public DbSet<Post> Posts { get; set; }
    }
}