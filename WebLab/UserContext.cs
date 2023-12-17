using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebLab
{
    public class UserContext : DbContext
    {
        // DESKTOP-V4RVBT2
        // localhost\\SQLEXPRESS
        public UserContext() : base("Data Source=DESKTOP-V4RVBT2;Initial Catalog=Users161;Integrated Security=True;Connect Timeout=30;Encrypt=False;")
        { }
        public DbSet<User> Users { get; set; }
    }
}