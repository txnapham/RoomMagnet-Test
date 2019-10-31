using System;

public partial class Admin : Account
{
    private int AdminID;
    //Constructor
	public Admin(int AccountID, String Password, String FirstName, String MiddleName, String LastName, String PhoneNumber, String BirthDate, String Email,
                   String HomeNumber, String Street, String City, String HomeState, String Zip, String Country, int PermissionID,int AdminID)
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
        setAdminID(AdminID);
	}
    //Getter Setter
    public void setAdminID(int AdminID)
    {
        this.AdminID = AdminID;
    }
    public int getAdminId()
    {
        return this.AdminID;
    }
}
