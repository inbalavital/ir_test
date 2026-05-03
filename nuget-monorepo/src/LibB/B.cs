using LibA;

namespace LibB;

public class B
{
    public void Greet()
    {
        new A().Greet();
        System.Console.WriteLine("B");
    }
}
