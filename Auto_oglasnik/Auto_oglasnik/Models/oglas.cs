using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    public class oglas
    {
        public int id_oglas { get; set; }
        public char datum { get; set; }
        public int id_poduzece{ get; set; }
        public string naslov { get; set; }
        public string podnaslov { get; set; }
        public string opis { get; set; }
        public string slika { get; set; }
        public int vip { get; set; }
        public string url { get; set; }
        public char dokument { get; set; }
        public int vidljivost { get; set; }
        public char datum_trajanja { get; set; }
    }
}