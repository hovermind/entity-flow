using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst.Repo
{
    public class Employee
    {
        private ICollection<Address> _addresses;

        [Key]
        public int Id { get; set;}
        public string Name { get; set;}
        public string Email { get; set; }

        public Employee()
        {
            _addresses = new List<Address>();
        }

        public virtual ICollection<Address> Addresses
        {
            get => _addresses;
            set => _addresses = value;
        } 
    }
}


