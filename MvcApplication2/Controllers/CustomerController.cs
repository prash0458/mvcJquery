using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mvc.Entity;

namespace MvcApplication2.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/

        NorthwindEntities nw = new NorthwindEntities();

        public ActionResult Index()
        {
            IEnumerable<Customer> customr = from customer in nw.Customers select customer;


            return View(customr);
        }

    }
}
