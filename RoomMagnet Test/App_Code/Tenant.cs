using System;

public partial class Tenant
{
    //Attributes
    private int AccountID;
    private String BackgroundStatus;
    private String TenantReason;
    
    //Constructor
	public Tenant(int AccountID, String BackgroundStatus, String TenantReason)
	{

        setAccountID(AccountID);
        setBackgroundStatus(BackgroundStatus);
        setTenantReason(TenantReason);
    }
    //Setters
    public void setAccountID(int AccountID)
    {
        this.AccountID = AccountID;
    }
    public void setBackgroundStatus(String BackgroundStatus)
    {
        this.BackgroundStatus = BackgroundStatus;
    }
    public void setTenantReason(String TenantReason)
    {
        this.TenantReason = TenantReason;
    }
    //Getters
    public int getAccountID()
    {
        return this.AccountID;
    }
    public String getBackgroundStatus()
    {
        return this.BackgroundStatus;
    }
    public String getTenantReason()
    {
        return this.TenantReason;
    }
}
