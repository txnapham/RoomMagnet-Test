using System;

public class Search
{
    //Attributes
    private int SearchID;
    private String SearchContent;
    private String Date;
    //Constructor
    public Search(int SearchID, String SearchContent, String Date)
	{
        setSearchID(SearchID);
        setSearchContent(SearchContent);
        setDate(Date);
	}
    //Setters
    public void setSearchID(int SearchID)
    {
        this.SearchID = SearchID;
    }
    public void setSearchContent(String SearchContent)
    {
        this.SearchContent = SearchContent;
    }
    public void setDate(String Date)
    {
        this.Date = Date;
    }
    //Getters
    public int getSearchID()
    {
        return this.SearchID;
    }
    public String getSearchContent()
    {
        return this.SearchContent;
    }
    public String getDate()
    {
        return this.Date;
    }
}
