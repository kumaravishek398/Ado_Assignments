namespace PKR_Travels_CodeFirst.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<PKR_Travels_CodeFirst.Models.BusInfoCfContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            ContextKey = "PKR_Travels_CodeFirst.Models.BusInfoCfContext";
        }

        protected override void Seed(PKR_Travels_CodeFirst.Models.BusInfoCfContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.
        }
    }
}
