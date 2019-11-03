using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Host
/// </summary>
public class Host : Account
{
    private string BackCheck;
    private string HostReason;

    public Host(Account account, string BackCheck, string HostReason)
        : base(account.getFirstName(), account.getMiddleName(), account.getLastName(), account.getPhone(), 
            account.getBday(), account.getEmail(), account.getHouseNumber(), account.getStreet(), account.getCity(), 
            account.getState(), account.getZip(), account.getCountry(), account.getAccType(), account.getModDate(), account.getPID())
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