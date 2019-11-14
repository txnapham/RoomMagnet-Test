using System;
using System.Text;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class Search_Tenant : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["type"] != null)
        {
            if ((int)Session["type"] == 1)
            {
                this.MasterPageFile = "~/AdminPage.master";
            }
            else if ((int)Session["type"] == 2)
            {
                this.MasterPageFile = "~/HostPage.master";
            }
            else if ((int)Session["type"] == 3)
            {
                this.MasterPageFile = "~/TenantPage.master";
            }
        }
        else if (Session["type"] == null)
        {
            this.MasterPageFile = "~/MasterPage.master";
        }
    }

    String homeSearch = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Search"] != null)
        {
            String homeSearch = "";
            homeSearch = Convert.ToString(Session["Search"]);
            btnSearch_Click(homeSearch);
        }
    }

    SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    public void btnSearch_Click(String homeSearch)
    {
        Boolean searchCheck = false;
        for (int i = 0; i < txtSearch.Text.Length - 1; i++)
        {
            String checkValue = txtSearch.Text.Substring(i, 2);
            if (checkValue == ", ")
            {
                searchCheck = true;
            }
        }

        if (String.IsNullOrEmpty(homeSearch))
        {
            // Do nothing
        }
        else
        {
            if (searchCheck == true)
            {
                SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

                if (String.IsNullOrEmpty(txtSearch.Text))
                {
                    // Do nothing
                }
                else
                {
                    sqlConn.Open();
                    String classType = "card";
                    String imgSource = "";
                    String cardBody = "";
                    String tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
                    int commaSplit = tSearch.IndexOf(",");
                    String cityString = tSearch.Substring(0, commaSplit).ToUpper();
                    String state = tSearch.Substring(commaSplit + 2).ToUpper();
                    String query = "select [PropertyID], [City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '" + state + "';";
                    System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
                    System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();

                    Card1.Text = "";
                    int resultCount = 0;

                    while (reader.Read())
                    {
                        int PropID = Convert.ToInt32(reader["PropertyID"]);
                        String city = reader["City"].ToString();
                        String homeState = reader["HomeState"].ToString();
                        String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
                        String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();
                        double priceLowRounded = Math.Round(Convert.ToDouble(priceRangeLow), 0, MidpointRounding.ToEven);
                        double priceHighRounded = Math.Round(Convert.ToDouble(priceRangeHigh), 0, MidpointRounding.ToEven);

                        StringBuilder myCard = new StringBuilder();
                        myCard
                        .Append("<div class=\"col-xs-4 col-md-3\">")
                        .Append("<div class=\"card  shadow-sm  mb-4\" >")
                        .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
                        .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
                        .Append("                            <div class=\"card-body\">")
                        .Append("                                <h5 class=\"card-title\">" + city + ", " + homeState + "</h5>")
                        .Append("                                <p class=\"card-text\">" + "$" + priceLowRounded + " - " + "$" + priceHighRounded + "</p>")
                        .Append("                            </div>")
                        .Append("                        </a>")
                        .Append("")
                        .Append("                        <div>")
                        .Append("                            <button type=\"button\" id=\"heartbtn" + resultCount + "\" onClick=\"favoriteBtn(" + PropID + "," + "\'" + city + "\'" + "," +
                                                        "\'" + homeState + "\'" + "," + priceLowRounded + "," + priceHighRounded + ")\" " +
                                                    "class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
                        .Append("                        </div>")
                        .Append("                    </div>")
                        .Append("</div>");

                        Card1.Text += myCard.ToString();
                        resultCount++;
                    }
                    reader.Close();
                    Session["Search"] = null;
                }
            }
            else
            {
                txtSearch.Text = "That Search Query Did Not Display Results";
            }
        }
    }

    [System.Web.Services.WebMethod]
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Boolean searchCheck = false;
        for (int i = 0; i < txtSearch.Text.Length - 1; i++)
        {
            String checkValue = txtSearch.Text.Substring(i, 2);
            if (checkValue == ", ")
            {
                searchCheck = true;
            }
        }

        if (searchCheck == true)
        {
            SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

            if (String.IsNullOrEmpty(txtSearch.Text))
            {
                // Do nothing
            }
            else
            {
                sqlConn.Open();
                String classType = "card";
                String imgSource = "";
                String cardBody = "";
                String tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
                int commaSplit = tSearch.IndexOf(",");
                String cityString = tSearch.Substring(0, commaSplit).ToUpper();
                String state = tSearch.Substring(commaSplit + 2).ToUpper();
                String query = "select [PropertyID], [City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '" + state + "';";
                System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
                System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();

                Card1.Text = "";
                int resultCount = 0;

                while (reader.Read())
                {
                    int PropID = Convert.ToInt32(reader["PropertyID"]);
                    String city = reader["City"].ToString();
                    String homeState = reader["HomeState"].ToString();
                    String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
                    String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();
                    double priceLowRounded = Math.Round(Convert.ToDouble(priceRangeLow), 0, MidpointRounding.ToEven);
                    double priceHighRounded = Math.Round(Convert.ToDouble(priceRangeHigh), 0, MidpointRounding.ToEven);

                    StringBuilder myCard = new StringBuilder();
                    myCard
                    .Append("<div class=\"col-xs-4 col-md-3\">")
                    .Append("<div class=\"card  shadow-sm  mb-4\" >")
                    .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
                    .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
                    .Append("                            <div class=\"card-body\">")
                    .Append("                                <h5 class=\"card-title\">" + city + ", " + homeState + "</h5>")
                    .Append("                                <p class=\"card-text\">" + "$" + priceLowRounded + " - " + "$" + priceHighRounded + "</p>")
                    .Append("                            </div>")
                    .Append("                        </a>")
                    .Append("")
                    .Append("                        <div>")
                    .Append("                            <button type=\"button\" id=\"heartbtn" + resultCount + "\" onClick=\"favoriteBtn(" + PropID + "," + "\'" + city + "\'" + "," +
                                                    "\'" + homeState + "\'" + "," + priceLowRounded + "," + priceHighRounded + ")\" " +
                                                "class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
                    .Append("                        </div>")
                    .Append("                    </div>")
                    .Append("</div>");

                    Card1.Text += myCard.ToString();
                    resultCount++;
                }
                reader.Close();
                Session["Search"] = null;
            }
        }
        else
        {
            txtSearch.Text = "That Search Query Did Not Display Results";
        }
    }


    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static void MiddleMan(int propertyID, string city, string state, double priceLow, double priceHigh)
    {
        int propID = propertyID;
        int loginID = Convert.ToInt32(HttpContext.Current.Session["AccountId"].ToString());

        System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        sqlConn.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sqlConn;
        insert.CommandText = "INSERT into [dbo].[FavoritedProperties] VALUES(@tenantID,@propertyID)";
        insert.Parameters.Add(new SqlParameter("@tenantID", loginID));
        insert.Parameters.Add(new SqlParameter("@propertyID", propID));

        insert.ExecuteNonQuery();
        //Place holder for variables in favorited properties dash
        HttpContext.Current.Session["city"] = city;
        HttpContext.Current.Session["state"] = state;
        HttpContext.Current.Session["priceLow"] = priceLow;
        HttpContext.Current.Session["priceHigh"] = priceHigh;
    }
}
