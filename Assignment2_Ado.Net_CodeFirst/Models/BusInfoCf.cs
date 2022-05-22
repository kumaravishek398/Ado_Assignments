using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PKR_Travels_CodeFirst.Models
{
    public class BusInfoCf
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int BusId { get; set; }
        public string BoardingPoint { get; set; }
        public DateTime TravelDate { get; set; }
        public double Amount { get; set; }
        public int? Rating { get; set; }
    }
}