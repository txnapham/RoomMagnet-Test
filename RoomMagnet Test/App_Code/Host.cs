using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Host
/// </summary>
public class Host
{
    private string Pet;
    private string BackCheck;
    private string HostType;
    public Host(string Pet, string BackCheck, string HostType)
    {
        setPet(Pet);
        setBackCheck(BackCheck);
        setHost(HostType);
    }

    public void setPet(string Pet)
    {
        this.Pet = Pet;
    }
    public void setBackCheck(string BackCheck)
    {
        this.BackCheck = BackCheck;
    }
    public void setHost(string HostType)
    {
        this.HostType = HostType;
    }

    //getter
    public string getPet()
    {
        return this.Pet;
    }
    public string getBackCheck()
    {
        return this.BackCheck;
    }
    public string getHostType()
    {
        return this.HostType;
    }
}