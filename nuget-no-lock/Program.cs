using System;
using Microsoft.Data.SqlClient;

namespace TransitiveRepro
{
    // Minimal program that references the direct package so the build is valid.
    // The point of this fixture is the dependency graph, not the runtime behaviour.
    internal static class Program
    {
        private static void Main()
        {
            // Reference a type from the direct package to keep the reference "used".
            var builder = new SqlConnectionStringBuilder
            {
                DataSource = "localhost",
                InitialCatalog = "demo"
            };
            Console.WriteLine(builder.ConnectionString);
        }
    }
}
