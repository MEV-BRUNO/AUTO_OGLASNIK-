using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    public class poduzece
    {
        public int id_poduzece{ get; set; }
        public char naziv { get; set; }
        public string adresa { get; set; }
        public char grad { get; set; }
        public char drzava { get; set; }
        public char tel { get; set; }
        public char mob { get; set; }
        public char email { get; set; }
        public string url { get; set; }
        public char kontakt_osoba { get; set; }
        public char geo_sirina { get; set; }
        public char geo_duzina { get; set; }
        public string opis { get; set; }
        public int vip { get; set; }
        public char vip_licenca { get; set; }
    }
}