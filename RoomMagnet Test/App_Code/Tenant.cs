using System;

public class Tenant : Account
{
    //Attributes
    private int AccountID;
    private String BackgroundStatus;
    private String TenantReason;
    
    //Constructor
	public Tenant(Account account, String BackgroundStatus, String TenantReason)
        : base(account.getFirstName(), account.getMiddleName(), account.getLastName(), account.getPhone(),
            account.getBday(), account.getEmail(), account.getHouseNumber(), account.getStreet(), account.getCity(),
            account.getState(), account.getZip(), account.getCountry(), account.getAccType(), account.getPID())
    {
        setBackgroundStatus(BackgroundStatus);
        setTenantReason(TenantReason);
    }
    //Setters
    public void setBackgroundStatus(String BackgroundStatus)
    {
        this.BackgroundStatus = BackgroundStatus;
    }
    public void setTenantReason(String TenantReason)
    {
        this.TenantReason = TenantReason;
    }
    //Getters
    public String getBackgroundStatus()
    {
        return this.BackgroundStatus;
    }
    public String getTenantReason()
    {
        return this.TenantReason;
    }
}
