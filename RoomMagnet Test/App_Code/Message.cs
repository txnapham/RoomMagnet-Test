using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Message
{
    // CONSTRUCTORS
    private int messageID;
    private int favPropID;
    private int favTenantID;
    private String messageContent;
    private String dateTime;
    public Message(int messageID, int favPropID, int favTenantID, string messageContent, String dateTime)
    {
        setMessageID(messageID);
        setFavPropID(favPropID);
        setFavTenant(favTenantID);
        setMessageContent(messageContent);
        setDateTime(dateTime);
    }

    // Setters
    public void setMessageID(int messageID)
    {
        this.messageID = messageID;
    }

    public void setFavPropID(int favPropID)
    {
        this.favPropID = favPropID;
    }

    public void setFavTenant(int favTenantID)
    {
        this.favTenantID = favTenantID;
    }

    public void setMessageContent(String messageContent)
    {
        this.messageContent = messageContent;
    }

    public void setDateTime(String dateTime)
    {
        this.dateTime = dateTime;
    }

    // Getters
    public int getMessageID()
    {
        return this.messageID;
    }

    public int getFavPropID()
    {
        return this.favPropID;
    }

    public int getFavTenantID()
    {
        return this.favTenantID;
    }

    public String getMessageContent()
    {
        return this.messageContent;
    }

    public String getDateTime()
    {
        return this.dateTime;
    }
}