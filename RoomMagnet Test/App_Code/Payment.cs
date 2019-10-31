using System;

public class Payment
{
    //Attributes
    private int PaymentID;
    private String PaymentMethod;
    private String PaymentDate;
    private int PaymentAmount;
    private int TenantID;
    private int HostID;
    private int LeaseID;
    //Constructor
	public Payment(int PaymentID,String PaymentMethod,String PaymentDate,int PaymentAmount,int TenantID,int HostID,int LeaseID)
	{
        setPaymentID(PaymentID);
        setPaymentMethod(PaymentMethod);
        setPaymentDate(PaymentDate);
        setPaymentAmount(PaymentAmount);
        setTenantID(TenantID);
        setHostID(HostID);
        setLeaseID(LeaseID);
	}
    //Setters
    public void setPaymentID(int PaymentID)
    {
        this.PaymentID = PaymentID;
    }
    public void setPaymentMethod(String PaymentMethod)
    {
        this.PaymentMethod = PaymentMethod;
    }
    public void setPaymentDate(String PaymentDate)
    {
        this.PaymentDate = PaymentDate;
    }
    public void setPaymentAmount(int PaymentAmount)
    {
        this.PaymentAmount = PaymentAmount;
    }
    public void setTenantID(int TenantID)
    {
        this.TenantID = TenantID;
    }
    public void setHostID(int HostID)
    {
        this.HostID = HostID;
    }
    public void setLeaseID(int LeaseID)
    {
        this.LeaseID = LeaseID;
    }
    //Getters
    public int getPaymentID()
    {
        return this.PaymentID;
    }
    public String getPaymentMethod()
    {
        return this.PaymentMethod;
    }
    public String getPaymentDate()
    {
        return this.PaymentDate;
    }
    public int getPaymentAmount()
    {
        return this.PaymentAmount;
    }
    public int getTenantID()
    {
        return this.TenantID;
    }
    public int getHostID()
    {
        return this.HostID;
    }
    public int getLeaseID()
    {
        return this.LeaseID;
    }
}
