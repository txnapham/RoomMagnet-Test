using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class FavoritedProperties
{
    // CONSTRUCTORS
    private int favPropertyID;
    private int tenantID;
    private int propertyID;
    public FavoritedProperties(int favPropertyID, int tenantID, int propertyID)
    {
        setFavPropertyID(favPropertyID);
        setTenantID(tenantID);
        setPropertyID(propertyID);
    }

    // Setters
    public void setFavPropertyID(int favPropertyID)
    {
        this.favPropertyID = favPropertyID;
    }

    public void setTenantID(int tenantID)
    {
        this.tenantID = tenantID;
    }

    public void setPropertyID(int propertyID)
    {
        this.propertyID = propertyID;
    }
    
    // Getters
    public int getFavPropertyID()
    {
        return this.favPropertyID;
    }

    public int getTenantID()
    {
        return this.tenantID;
    }

    public int getPropertyID()
    {
        return this.propertyID;
    }
}