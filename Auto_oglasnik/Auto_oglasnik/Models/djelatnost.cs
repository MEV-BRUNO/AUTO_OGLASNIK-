using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    [Table("djelatnost")]
    public class djelatnost
    {
        [Required]
        [Key]
        public int id_djelatnost { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Naziv")]
        public string naziv { get; set; }
    }
}