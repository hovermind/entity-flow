using CodeFirst.Repo;
using DbFirst.Repo;
using ModelFirst.Repo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityFrameworkDemo
{
    class Program
    {
        static void Main(string[] args)
        {

            #region DB First

            //var schoolDbEntities = new SchoolDBEntities();

            //var studentList = schoolDbEntities.Students.ToList();

            //Console.WriteLine("Student name list:");
            //foreach (var student in studentList)
            //    Console.WriteLine(student.StudentName);

            #endregion

            #region Model First

            //var personModelContainer = new PersonModelContainer();

            //var persons = personModelContainer.PersonSet.ToList();

            //Console.WriteLine("Person name list:");
            //foreach (var person in persons)
            //    Console.WriteLine(person.Name);

            #endregion

            #region Code First

            var employeeContext = new EmployeeContext();

            var employees = employeeContext.Employees.ToList();

            Console.WriteLine("Employee name list:");
            foreach (var employee in employees)
                Console.WriteLine(employee.Name);

            #endregion

            Console.ReadKey();
        }
    }
}
