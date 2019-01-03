using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst.Repo
{
    public class Address
    {
        [Key]
        public int Id { get; set; }
        public string  ZipCode { get; set; }
        public string City { get; set; }
        public string Ward { get; set; }

        [ForeignKey("Employee")]
        public int EmployeeId { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
