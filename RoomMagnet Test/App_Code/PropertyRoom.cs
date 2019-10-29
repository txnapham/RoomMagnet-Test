using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class PropertyRoom
{
    // CONSTRUCTORS
    private int roomID;
    private int propertyID;
    private String monthlyPrice;
    public PropertyRoom(int roomID, int propertyID, String monthlyPrice)
    {
        setRoomID(roomID);
        setPropertyID(propertyID);
        setMonthlyPrice(monthlyPrice);
    }

    // Setters
    public void setRoomID(int roomID)
    {
        this.roomID = roomID;
    }

    public void setPropertyID(int propertyID)
    {
        this.propertyID = propertyID;
    }

    public void setMonthlyPrice(String monthlyPrice)
    {
        this.monthlyPrice = monthlyPrice;
    }

    // Getters
    public int getRoomID()
    {
        return this.roomID;
    }

    public int getPropertyID()
    {
        return this.propertyID;
    }

    public String getMonthlyPrice()
    {
        return this.monthlyPrice;
    }
}