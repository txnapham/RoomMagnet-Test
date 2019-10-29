using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Property
/// </summary>
public class Property
{
    private int propertyID;
    private int hostID;
    private String houseNumber;
    private String street;
    private String city;
    private String homeState;
    private String country;
    private String zip;
    private String localPriceRangeLow;
    private String localPriceRangeHigh;
    private String roomPriceRangeLow;
    private String roomPriceRangeHigh;
    private String modifiedDate;
    public Property(int propertyID, int hostID, String houseNumber, String street, String city, String homeState, String country, String zip, String localPriceRangeLow, String localPriceRangeHigh, String roomPriceRangeLow, String roomPriceRangeHigh, String modifiedDate )
    {
        setPropertyID(propertyID);
        setHostID(hostID);
        setHouseNumber(houseNumber);
        setStreet(street);
        setCity(city);
        setHomeState(homeState);
        setCountry(country);
        setZip(zip);
        setLocalPriceRangeLow(localPriceRangeLow);
        setLocalPriceRangeHigh(localPriceRangeHigh);
        setRoomPriceRangeLow(roomPriceRangeLow);
        setRoomPriceRangeHigh(roomPriceRangeHigh);
    }

    //propertyID
    public int getPropertyID()
    {
        return this.propertyID;
    }

    public void setPropertyID(int propertyID)
    {
        this.propertyID = propertyID;
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

    //houseNumber
    public void setHouseNumber(String houseNumber)
    {
        this.houseNumber = houseNumber;
    }
    public String getHouseNumber()
    {
        return this.houseNumber;
    }


    public void setStreet(String street)
    {
        this.street = street;
    }
    public String getStreet()
    {
        return this.street;
    }
    public void setCity(String city)
    {
        this.city = city;
    }
    public String getCity()
    {
        return this.city;
    }
    public void setHomeState(String homeState)
    {

        this.homeState = homeState;
    }
    public String getHomeState()
    {
        return this.homeState;
    }
    public void setCountry(String country)
    {
        this.country = country;
    }
    public String getCountry()
    {
        return this.country;
    }
    public void setZip(String zip)
    {

        this.zip = zip;
    }
    public String getZip()
    {
        return this.zip;
    }



    //localPriceRangeLow
    public String getLocalPriceRangeLow()
    {
        return this.localPriceRangeLow;
    }

    public void setLocalPriceRangeLow(String localPriceRangeLow)
    {
        this.localPriceRangeLow = localPriceRangeLow;
    }
    //localPriceRangeHigh
    public String getLocalPriceRangeHigh()
    {
        return this.localPriceRangeHigh;
    }

    public void setLocalPriceRangeHigh(String localPriceRangeHigh)
    {
        this.localPriceRangeHigh = localPriceRangeHigh;
    }
    //roomPriceRangeLow
    public String getRoomPriceRangeLow()
    {
        return this.roomPriceRangeLow;
    }

    public void setRoomPriceRangeLow(String roomPriceRangeLow)
    {
        this.roomPriceRangeLow = roomPriceRangeLow;
    }
    //roomPriceRangeHigh
    public String getRoomPriceRangeHigh()
    {
        return this.roomPriceRangeHigh;
    }

    public void setRoomPriceRangeHigh(String roomPriceRangeHigh)
    {
        this.roomPriceRangeHigh = roomPriceRangeHigh;
    }

}