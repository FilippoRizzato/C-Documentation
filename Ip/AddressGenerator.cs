using System;
using System.Net;

interface IAddress
{
    string generateIPv4();
    string generateSubnet();
}

class AddressGenerator : IAddress
{
    private uint address;

    public AddressGenerator(uint address)
    {
        this.address = address;
    }

    public string generateIPv4()
    {
        
        byte[] bytes = BitConverter.GetBytes(address);
        if (BitConverter.IsLittleEndian)
        {
            Array.Reverse(bytes);
        }
        return new IPAddress(bytes).ToString();
    }

    public string generateSubnet()
    {
        return generateIPv4() + "/24";
    }
}
