using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mvc.Entity;

namespace MvcApplication2.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/
        NorthwindEntities nw = new NorthwindEntities();

        public ActionResult Index()
        {
            IEnumerable<Employee> emp = from employee in nw.Employees select employee;

            return View(emp);
        }

    }
}
