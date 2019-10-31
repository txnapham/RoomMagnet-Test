using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Host
/// </summary>
public class Host
{
    private string BackCheck;
    private string HostReason;

    public Host(string BackCheck, string HostReason)
    {
        setBackCheck(BackCheck);
        setHostReason(HostReason);
    }
    
    //Setters
    public void setBackCheck(string BackCheck)
    {
        this.BackCheck = BackCheck;
    }
    public void setHostReason(string HostReason)
    {
        this.HostReason = HostReason;
    }

    //getter
    public string getBackCheck()
    {
        return this.BackCheck;
    }
    public string getHostReason()
    {
        return this.HostReason;
    }
}