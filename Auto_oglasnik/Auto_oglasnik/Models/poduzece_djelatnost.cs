using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Auto_oglasnik.Models
{
    [Table("poduzece_djelatnost")]
    public class poduzece_djelatnost
    {
        [Required]
        [Key]
        public int id_poduzece { get; set; }

        [Display(Name = "ID djelatnost")]
        public int id_djelatnost { get; set; }
    }
}