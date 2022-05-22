using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FootBallLeagueCF.Models;

namespace FootBallLeagueCF.Controllers
{
    public class HomeController : Controller
    {
        FootBallContext context = new FootBallContext();
        public ActionResult Index()
        {
            return View(context.FootBalls);
        }

        public ActionResult AddResult()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SaveResult(FootBall ft)
        {
            context.FootBalls.Add(ft);
            context.SaveChanges();
            return RedirectToAction("Index");
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