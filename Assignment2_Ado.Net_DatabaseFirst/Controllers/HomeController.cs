using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PKR_Travels_DatabaseFirst.Controllers
{
    public class HomeController : Controller
    {
        REDBUSEntities context = new REDBUSEntities();
        public ActionResult Index()
        {
            return View(context.BusInfoes);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}