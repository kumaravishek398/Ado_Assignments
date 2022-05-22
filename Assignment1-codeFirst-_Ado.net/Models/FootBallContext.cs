using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace FootBallLeagueCF.Models
{
    public class FootBallContext : DbContext
    {
        public FootBallContext() : base("name=DBCS")
        {

        }
        public DbSet<FootBall> FootBalls { get; set; }
    }
}