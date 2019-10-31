using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Account
/// </summary>
public class Account
{ 
    //Attributes
    private int AccountID;
    private String Password;
    private String FirstName;
    private String MiddleName;
    private String LastName;
    private String PhoneNumber;
    private String BirthDate;
    private String Email;
    private String HomeNumber;
    private String Street;
    private String City;
    private String HomeState;
    private String Zip;
    private String Country;
    private int PermissionID;
    //Constructor
    public Account() { }
    public Account(int AccountID,String Password,String FirstName,String MiddleName,String LastName,String PhoneNumber,String BirthDate,String Email,
                   String HomeNumber,String Street,String City,String HomeState,String Zip,String Country,int PermissionID)
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
    }
    //Setters
    public void setAccountID(int AccountID)
    {
        this.AccountID = AccountID;
    }
    public void setPassword(String Password)
    {
        this.Password = Password;
    }
    public void setFirstName(String FirstName)
    {
        this.FirstName = FirstName;
    }
    public void setMiddleName(String MiddleName)
    {
        this.MiddleName = MiddleName;
    }
    public void setLastName(String LastName)
    {
        this.LastName = LastName;
    }
    public void setPhoneNumber(String PhoneNumber)
    {
        this.PhoneNumber = PhoneNumber;
    }
    public void setBirthDate(String BirthDate)
    {
        this.BirthDate = BirthDate;
    }
    public void setEmail(String Email)
    {
        this.Email = Email;
    }
    public void setHomeNumber(String HomeNumber)
    {
        this.HomeNumber = HomeNumber;
    }
    public void setStreet(String Street)
    {
        this.Street = Street;
    }
    public void setCity(String City)
    {
        this.City = City;
    }
    public void setHomeState(String HomeState)
    {
        this.HomeState = HomeState;
    }
    public void setZip(String Zip)
    {
        this.Zip = Zip;
    }
    public void setCountry(String Country)
    {
        this.Country = Country;
    }
    public void setPermissionID(int PermissionID)
    {
        this.PermissionID = PermissionID;
    }
    //Getters
    public int getAccountID()
    {
        return this.AccountID;
    }
    public String getPassword()
    {
        return this.Password;
    }
    public String getFirstName()
    {
        return this.FirstName;
    }
    public String getMiddleName()
    {
        return this.MiddleName;
    }
    public String getLastName()
    {
        return this.LastName;
    }
    public String getPhoneNumber()
    {
        return this.PhoneNumber;
    }
    public String getBirthDate()
    {
        return this.BirthDate;
    }
    public String getEmail()
    {
        return this.Email;
    }
    public String getHomeNumber()
    {
        return this.HomeNumber;
    }
    public String getStreet()
    {
        return this.Street;
    }
    public String getCity()
    {
        return this.City;
    }
    public String getHomeState()
    {
        return this.HomeState;
    }
    public String getZip()
    {
        return this.Zip;
    }
    public String getCountry()
    {
        return this.Country;
    }
    public int getPermissionID()
    {
        return this.PermissionID;
    }
    
}