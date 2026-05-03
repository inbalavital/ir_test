using Newtonsoft.Json;

namespace Fixture;

public class Program
{
    public static void Main(string[] args)
    {
        var json = JsonConvert.SerializeObject(new { Hello = "World" });
        System.Console.WriteLine(json);
    }
}
