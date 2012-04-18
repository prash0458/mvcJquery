using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication2.Models;

namespace MvcApplication2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";

            int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };

            var lowNums =
                from n in numbers

                select n;
            int sum = 0;
            Response.Write("Numbers < 5:");
            foreach (var x in lowNums)
            {
                sum = sum + x;
            }

            List<String> list = new List<string> {"twea","aera" };

            int[] myarray = { 1, 3, 4, 6 };

            int[] myarray1;

            //myarray1= {1,3,4,6};

            Response.Write(sum);

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Details()
        {
            return View();
        }

        public ActionResult Add()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Get)]
        //[HttpGet]
        public ActionResult Edit()
        {
            return View();
        }

        [AcceptVerbs(HttpVerbs.Post)]
        [HttpPost]
        public ActionResult Edit(Customer cust,FormCollection formcollection)
        {
            return View();
        }


        public ContentResult TestContentResult()
        {
            System.Web.Mvc.ContentResult ad = new ContentResult();

            ad.Content = "test";
            ad.ContentType = "test1";
            ad.ContentEncoding = System.Text.Encoding.ASCII;
            return ad;
        }
    }
}
