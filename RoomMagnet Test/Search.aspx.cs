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


public partial class Search : System.Web.UI.Page
{

    System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
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

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    [System.Web.Services.WebMethod]
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtSearch.Text))
        {
            // Do nothing
        }
        else
        {
            ////Breaking down the searchbox text
            //DataTable propertyDataTable = new DataTable();
            //String property = txtSearch.Text;
            //int split = property.IndexOf(",");
            //String city = property.Substring(0, split);
            //String state = property.Substring(split + 1);
            ////New select queries
            //SqlCommand select = new SqlCommand();
            ////Query that selects data
            //select.CommandText = "select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from [dbo].[Property] " + "Where [City] = @City AND [HomeState] = @HomeState";
            //select.Parameters.AddWithValue("@City", city);
            //select.Parameters.AddWithValue("@State", state);

            sqlConn.Open();
            String classType = "card";
            String imgSource = "";
            String cardBody = "";
            String tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
            int commaSplit = tSearch.IndexOf(",");
            String cityString = tSearch.Substring(0, commaSplit).ToUpper();
            String state = tSearch.Substring(commaSplit + 2).ToUpper(); 
            String query = "select [PropertyID],[City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '"+state+ "';";
            System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
            //sqlComm.CommandText = ("select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like upper('%" + cityString + "%')"); 
            System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();
            int count = 0;
            while (reader.Read())
            {
                String propertyID = reader["PropertyID"].ToString();
                String city = reader["City"].ToString();
                String homeState = reader["HomeState"].ToString();
                String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
                String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();
                int propIdInt = Convert.ToInt32(propertyID);
                double priceLowRounded = Math.Round(Convert.ToDouble(priceRangeLow), 0, MidpointRounding.ToEven);
                double priceHighRounded = Math.Round(Convert.ToDouble(priceRangeHigh), 0,MidpointRounding.ToEven);


                StringBuilder myCard = new StringBuilder();
                myCard
                    .Append("<div class=\"col-md-3\">")
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
                    .Append("                            <button type=\"button\" id=\"heartbtn" + count + "\" onClick=\"favoriteBtn(" + propIdInt + "," + "\'" + city + "\'" + "," +
                                                            "\'" + homeState + "\'" + "," + "\'" + priceLowRounded + "\'" + "," + "\'" + priceHighRounded + "\'" + ")\" " +
                                                        "class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>") 
                    .Append("                        </div>")
                    .Append("                    </div>")
                    .Append("</div>");

                    count++;
                    Card1.Text += myCard.ToString();
            }
            reader.Close();

            //Card1.Text = "<div class = \"card shadow-sm mb-4" + ">"   
            //    + "<img src=" + imgSource + "class=" + "card-img-top" alt" + "image" + ">"
            //    + "<a href=" + "search-result-page-detail.html class=" + "cardLinks" + ">"
            //    + "<div class=" + cardBody + "\">"  + "<h5 class=" + cardTitle +





        }

    }
    //protected void heartBtn_CheckedChanged(object sender, EventArgs e)
    //{
    //    sqlConn.Open();
    //    String tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
    //    int commaSplit = tSearch.IndexOf(",");
    //    String cityString = tSearch.Substring(0, commaSplit).ToUpper();
    //    String state = tSearch.Substring(commaSplit + 2).ToUpper();
    //    String query = "select [PropertyID],[City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '" + state + "';";
    //    System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
    //    System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();
    //    while (reader.Read())
    //    {
    //        String propertyID = reader["PropertyID"].ToString();
    //        String city = reader["City"].ToString();
    //        String homeState = reader["HomeState"].ToString();
    //        String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
    //        String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();
    //        int propIdInt = Convert.ToInt32(propertyID);
    //        double priceLowRounded = Math.Round(Convert.ToDouble(priceRangeLow), 0, MidpointRounding.ToEven);
    //        double priceHighRounded = Math.Round(Convert.ToDouble(priceRangeHigh), 0, MidpointRounding.ToEven);
    //        Session["propertyID"] = propertyID;
    //        Session["city"] = city;
    //        Session["homeState"] = homeState;
    //        Session["priceLow"] = priceLowRounded;
    //        Session["priceHigh"] = priceHighRounded;
    //    }
    //}

}
