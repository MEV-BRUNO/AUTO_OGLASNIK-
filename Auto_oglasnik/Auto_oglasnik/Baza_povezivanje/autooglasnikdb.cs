using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.Mvc;
using Auto_oglasnik.Models;

namespace Auto_oglasnik.Baza_povezivanje
{
    public class autooglasnikdb : DbContext
    {

        public DbSet<korisnik> Korisnici { get; set; }
    }
}
