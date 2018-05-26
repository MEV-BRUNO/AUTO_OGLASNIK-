
using Auto_oglasnik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Auto_oglasnik.Baza_povezivanje;

namespace Auto_oglasnik.Controllers
    {
        public class LoginController : Controller
        {

        private autooglasnikdb baza = new autooglasnikdb();

        public ActionResult login()
            {


                return View();
            }



        [HttpGet]
        public ActionResult registracija()
        {
            korisnik m = new korisnik();

            return View(m);
        }

        public ActionResult registracija(korisnik m)
        {
            if (ModelState.IsValid)
            {

                baza.Korisnici.Add(m);
                baza.SaveChanges();
                return RedirectToAction("login");

            }

            return View(m);
        }


        public ActionResult zab_lozinka()
            {

            return View();
            }
        }
}
