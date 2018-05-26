using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    [Table("korisnik")]
    public class korisnik
    {
        [Required]
        [Key]
        public int id_korisnik { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Ime i Prezime")]
        public string ime_prezime { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Upisali ste nevaljanu e-mail adresu")]
        [Display(Name = "Email")]
        public string email { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Lozinka")]
        public string lozinka { get; set; }

       // [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Licenca")]
        public string licenca { get; set; }

      //  [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Vrsta")]
        public int vrsta { get; set; }

        [Display(Name = "ID poduzece")]
        public int id_poduzece{ get; set; }

      //  [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Aktivan")]
        public int aktivan { get; set; }

      //  [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Aktiv link")]
        public int aktiv_link { get; set; }
    }
}