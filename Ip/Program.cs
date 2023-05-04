using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ip
{
    internal class Program
    {
        static void Main(string[] args)
        {
          
                // Crea un nuovo oggetto AddressGenerator con una lunghezza di 32 bit
                AddressGenerator generator = new AddressGenerator(32);

                // Genera un indirizzo IPv4 e lo stampa sulla console
                string ipv4 = generator.generateIPv4();
                Console.WriteLine("Indirizzo IPv4: {0}", ipv4);

                // Genera una subnet e la stampa sulla console
                string subnet = generator.generateSubnet();
                Console.WriteLine("Subnet: {0}", subnet);

                // Attendi l'input dell'utente per chiudere il programma
                Console.WriteLine("Premi un tasto per uscire...");
                Console.ReadKey();
            
        }
    }
}
