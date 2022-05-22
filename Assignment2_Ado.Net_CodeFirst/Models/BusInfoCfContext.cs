using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace PKR_Travels_CodeFirst.Models
{
    public class BusInfoCfContext : DbContext
    {
        public BusInfoCfContext() : base("name=BusConnection")
        {

        }
        public DbSet<BusInfoCf> busInfoCfs { get; set; } //to map into db
    }
}