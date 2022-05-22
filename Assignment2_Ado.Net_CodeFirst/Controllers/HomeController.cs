using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PKR_Travels_CodeFirst.Models;

namespace PKR_Travels_CodeFirst.Controllers
{
    public class HomeController : Controller
    {
        BusInfoCfContext context = new BusInfoCfContext();
        // GET: Home
        public ActionResult Index()
        {
            return View(context.busInfoCfs);
        }
        public ActionResult AddBusDetail()
        {
            
            return View();
        }
       
        [HttpPost]
        public ActionResult SaveBusDetail(BusInfoCf bus)
        {
            context.busInfoCfs.Add(bus);
            context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}