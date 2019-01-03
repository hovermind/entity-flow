using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst.Repo
{
    public class EmployeeContext : DbContext
    {
        public EmployeeContext() : base("EmployeeContext")
        {
            
        }
    
        public DbSet<Employee> Employees { get; set; }

        public DbSet<Address> Addresses { get; set; }
    }
}
