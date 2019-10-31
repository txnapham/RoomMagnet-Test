using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Lease
/// </summary>
public class Lease
{
    //CONSTRUCTORS
    private int leaseID;
    private int roomID;
    private int hostID;
    private int tenantID;
    private String monthlyPrice;
    private String effectiveDate;
    private String terminationDate;
    private String modifiedDate;
    public Lease(int leaseID, int roomID, int hostID, int tenantID, String monthlyPrice, String effectiveDate, String terminationDate, String modifiedDate)
    {
        setLeaseID(leaseID);
        setRoomID(roomID);
        setHostID(hostID);
        setTenantID(tenantID);
        setMonthlyPrice(monthlyPrice);
        setEffectiveDate(effectiveDate);
        setTerminationDate(terminationDate);
        setModifiedDate(modifiedDate);

    }

    //leaseID
    public int getLeaseID()
    {
        return this.leaseID;
    }

    public void setLeaseID(int leaseID)
    {
        this.leaseID = leaseID;
    }


    //roomID
    public int getRoomID()
    {
        return this.roomID;
    }

    public void setRoomID(int roomID)
    {
        this.roomID = roomID;
    }

    //hostID
    public int getHostID()
    {
        return this.hostID;
    }

    public void setHostID(int hostID)
    {
        this.hostID = hostID;
    }

    //tenantID
    public int getTenantID()
    {
        return this.tenantID;
    }

    public void setTenantID(int tenantID)
    {
        this.tenantID = tenantID;
    }
   
    //monthlyPrice
    public String getMonthlyPrice()
    {
        return this.monthlyPrice;
    }

    public void setMonthlyPrice(String monthlyPrice)
    {
        this.monthlyPrice = monthlyPrice;
    }
    //effectiveDate
    public String getEffectiveDate()
    {
        return this.effectiveDate;
    }

    public void setEffectiveDate(String effectiveDate)
    {
        this.effectiveDate = effectiveDate;
    }
    //terminationDate
    public String getTerminationDate()
    {
        return this.terminationDate;
    }

    public void setTerminationDate(String terminationDate)
    {
        this.terminationDate = terminationDate;
    }

    //modifiedDate
    public String getModifiedDate()
    {
        return this.modifiedDate;
    }

    public void setModifiedDate(String modifiedDate)
    {
        this.modifiedDate = modifiedDate;
    }


}