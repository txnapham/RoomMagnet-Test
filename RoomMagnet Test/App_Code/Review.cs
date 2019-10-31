using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Review
/// </summary>
public class Review
{
    private int reviewID;
    private int hostID;
    private int tenantID;
    private int propertyID;
    private String reviewContent;
    private String date;
    private char reviewType;
    private String modifiedDate;
    public Review(int reviewID, int hostID, int tenantID, int propertyID, String reviewContent, String date, char reviewType,String modifiedDate)
    {
        setReviewID(reviewID);
        setHostID(hostID);
        setTenantID(tenantID);
        setPropertyID(propertyID);
        setReviewContent(reviewContent);
        setDate(date);
        setReviewType(reviewType);
        setModifiedDate(modifiedDate);
    }

    //reviewID
    public int getReviewID()
    {
        return this.reviewID;
    }

    public void setReviewID(int reviewID)
    {
        this.reviewID = reviewID;
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
    //propertyID
    public int getPropertyID()
    {
        return this.propertyID;
    }

    public void setPropertyID(int propertyID)
    {
        this.propertyID = propertyID;
    }
    //reviewContent
    public String getReviewContent()
    {
        return this.reviewContent;
    }

    public void setReviewContent(String reviewContent)
    {
        this.reviewContent = reviewContent;
    }
    //date
    public String getDate()
    {
        return this.date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }
    //reviewType
    public char getReviewType()
    {
        return this.reviewType;
    }

    public void setReviewType(char reviewType)
    {
        this.reviewType = reviewType;
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