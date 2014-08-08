using System;
using EnterpriseServices.Framework.Commons;

namespace EnterpriseServices.Utilities.Initialization
{
    class Program
    {
        static void Main(string[] args)
        {
            UtilityDescription.PrintDescription();

            Console.WriteLine(Environment.NewLine);

            Entrance.PrintDescription();

            if (Entrance.Continue())
            {
                try
                {
                    InitialProcess process = new InitialProcess();
                    process.Start();
                    process.Exit();
                }
                catch (Exception ex)
                {
                    Exception innerException = ex.InnerException;
                    if (innerException is Error)
                    {
                        Error innerError = innerException as Error;
                        Console.WriteLine("{0}({1}:{2})", innerError.Message, innerError.BlockCode, innerError.ErrorCode);
                    }
                    else Console.WriteLine(innerException.Message);

                    Console.Read();
                }
            }
        }
    }
}
