using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public partial class Host : Account
{
    //Attributes
    private int HostID;
    private String PetFriendly;
    private String BackgroundStatus;
    private String HostType;
    //Constructor
	public Host(int AccountID, String Password, String FirstName, String MiddleName, String LastName, String PhoneNumber, String BirthDate, String Email,
                   String HomeNumber, String Street, String City, String HomeState, String Zip, String Country, int PermissionID, int HostID, String PetFriendly, 
                   String BackgroundStatus,String HostType)
	{
        setAccountID(AccountID);
        setPassword(Password);
        setFirstName(FirstName);
        setMiddleName(MiddleName);
        setLastName(LastName);
        setPhoneNumber(PhoneNumber);
        setBirthDate(BirthDate);
        setEmail(Email);
        setHomeNumber(HomeNumber);
        setStreet(Street);
        setCity(City);
        setHomeState(HomeState);
        setZip(Zip);
        setCountry(Country);
        setPermissionID(PermissionID);
        setHostId(HostID);
        setPetFriendly(PetFriendly);
        setBackgroundStatus(BackgroundStatus);
        setHostType(HostType);
	}
    //Setters
    public void setHostId(int HostID)
    {
        this.HostID = HostID;
    }
    public void setPetFriendly(String PetFriendly)
    {
        this.PetFriendly = PetFriendly;
    }
    public void setBackgroundStatus(String BackgroundStatus)
    {
        this.BackgroundStatus = BackgroundStatus;
    }
    public void setHostType(String HostType)
    {
        this.HostType = HostType;
    }
    //Getters
    public int getHostId()
    {
        return this.HostID;
    }
    public String getPetFriendly()
    {
        return this.PetFriendly;
    }
    public String getBackgroundStatus()
    {
        this.BackgroundStatus;
    }
    public String getHostType()
    {
        this.HostType;
    }
}
