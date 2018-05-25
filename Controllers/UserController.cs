using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Auto_oglasnik.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ViewBag.Message = "Login stranica";

            return View();
        }

        public ActionResult Admin()
        {
            ViewBag.Message = "Stranice admina";

            return View();
        }
        public ActionResult Client()
        {
            ViewBag.Message = "Stranica korisnika";

            return View();
        }
        public ActionResult Guest()
        {
            ViewBag.Message = "Stranica Gosta";

            return View();
        }
    }
}
