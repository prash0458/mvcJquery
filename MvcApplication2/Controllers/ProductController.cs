using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mvc.Entity;

namespace MvcApplication2.Controllers
{
    public class ProductController : Controller
    {
        //
        // GET: /Product/

        NorthwindEntities nw = new NorthwindEntities();

        public ActionResult Index()
        {
            IEnumerable<Product> pd = from product in nw.Products select product;

            return View(pd);
        }

        public ActionResult Details(int Id)
        {
            IQueryable<Product> pd = from produdct in nw.Products where produdct.ProductID == Id select produdct;

            return View(pd.FirstOrDefault());
        }

    }
}
