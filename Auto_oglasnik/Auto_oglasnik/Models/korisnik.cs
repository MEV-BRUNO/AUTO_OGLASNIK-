using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    public class korisnik
    {
        public int id_korisnik { get; set; }
        public string ime_prezime { get; set; }
        public char email { get; set; }
        public char lozinka { get; set; }
        public char licenca { get; set; }
        public int vrsta { get; set; }
        public int id_poduzece{ get; set; }
        public int aktivan { get; set; }
        public int aktiv_link { get; set; }
    }
}