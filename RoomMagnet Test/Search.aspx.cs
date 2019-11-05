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

    System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
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

    public void btnSearch_Click(String homeSearch)
    {
        if (String.IsNullOrEmpty(homeSearch))
        {
            // Do nothing
        }
        else
        {
            txtSearch.Text = homeSearch;
            sqlConn.Open();
            String classType = "card";
            String imgSource = "";
            String cardBody = "";
            String tSearch = homeSearch;
            int commaSplit = tSearch.IndexOf(",");
            String cityString = tSearch.Substring(0, commaSplit).ToUpper();
            String state = tSearch.Substring(commaSplit + 2).ToUpper();
            String query = "select [City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '" + state + "';";
            System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
            //sqlComm.CommandText = ("select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like upper('%" + cityString + "%')"); 
            System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();

            Card1.Text = "";

            while (reader.Read())
            {
                String city = reader["City"].ToString();
                String homeState = reader["HomeState"].ToString();
                String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
                String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();

                StringBuilder myCard = new StringBuilder();
                myCard
                .Append("<div class=\"col-xs-4 col-md-3\">")
                .Append("<div class=\"card  shadow-sm  mb-4\" >")
                .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
                .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
                .Append("                            <div class=\"card-body\">")
                .Append("                                <h5 class=\"card-title\">" + city + ", " + homeState + "</h5>")
                .Append("                                <p class=\"card-text\">" + "$" + priceRangeLow + " - " + "$" + priceRangeHigh + "</p>")
                .Append("                            </div>")
                .Append("                        </a>")
                .Append("")
                .Append("                        <div>")
                .Append("                            <button id=\"heartbtn\" class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
                .Append("                        </div>")
                .Append("                    </div>")
                .Append("</div>");

                Card1.Text += myCard.ToString();
            }
            reader.Close();
             
        }
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
            sqlConn.Close();
            sqlConn.Open();
            String classType = "card";
            String imgSource = "";
            String cardBody = "";
            String tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
            int commaSplit = tSearch.IndexOf(",");
            String cityString = tSearch.Substring(0, commaSplit).ToUpper();
            String state = tSearch.Substring(commaSplit + 2).ToUpper(); 
            String query = "select [City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + cityString + "' AND upper([HomeState]) like '"+state+ "';";
            System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
            //sqlComm.CommandText = ("select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like upper('%" + cityString + "%')"); 
            System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();

            Card1.Text = "";

            while (reader.Read())
            {
                String city = reader["City"].ToString();
                String homeState = reader["HomeState"].ToString();
                String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
                String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();

                StringBuilder myCard = new StringBuilder();
                myCard
                .Append("<div class=\"col-xs-4 col-md-3\">")
                .Append("<div class=\"card  shadow-sm  mb-4\" >")
                .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
                .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
                .Append("                            <div class=\"card-body\">")
                .Append("                                <h5 class=\"card-title\">" + city + ", " + homeState + "</h5>")
                .Append("                                <p class=\"card-text\">" + "$" + priceRangeLow + " - " + "$" + priceRangeHigh + "</p>")
                .Append("                            </div>")
                .Append("                        </a>")
                .Append("")
                .Append("                        <div>")
                .Append("                            <button id=\"heartbtn\" class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
                .Append("                        </div>")
                .Append("                    </div>")
                .Append("</div>");

                Card1.Text += myCard.ToString();
            }
            reader.Close();

        }

        //public void btnSearchHome(String homeSearch)
        //{
        //    if (String.IsNullOrEmpty(txtSearch.Text))
        //    {
        //        // Do nothing
        //    }
        //    else
        //    {
        //        sqlConn.Open();
        //        String classType = "card";
        //        String imgSource = "";
        //        String cardBody = "";
        //        String tSearch = homeSearch;
        //        int commaSplit = tSearch.IndexOf(",");
        //        String homeSearch = tSearch.Substring(0, commaSplit).ToUpper();
        //        String state = tSearch.Substring(commaSplit + 2).ToUpper();
        //        String query = "select [City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like '" + homeSearch + "' AND upper([HomeState]) like '" + state + "';";
        //        System.Data.SqlClient.SqlCommand sqlComm = new System.Data.SqlClient.SqlCommand(query, sqlConn);
        //        //sqlComm.CommandText = ("select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from[dbo].[Property] where upper([City]) like upper('%" + cityString + "%')"); 
        //        System.Data.SqlClient.SqlDataReader reader = sqlComm.ExecuteReader();

        //        Card1.Text = "";

        //        while (reader.Read())
        //        {
        //            String city = reader["City"].ToString();
        //            String homeState = reader["HomeState"].ToString();
        //            String priceRangeLow = reader["RoomPriceRangeLow"].ToString();
        //            String priceRangeHigh = reader["RoomPriceRangeHigh"].ToString();

        //            StringBuilder myCard = new StringBuilder();
        //            myCard
        //            .Append("<div class=\"col-xs-4 col-md-3\">")
        //            .Append("<div class=\"card  shadow-sm  mb-4\" >")
        //            .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
        //            .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
        //            .Append("                            <div class=\"card-body\">")
        //            .Append("                                <h5 class=\"card-title\">" + city + ", " + homeState + "</h5>")
        //            .Append("                                <p class=\"card-text\">" + "$" + priceRangeLow + " - " + "$" + priceRangeHigh + "</p>")
        //            .Append("                            </div>")
        //            .Append("                        </a>")
        //            .Append("")
        //            .Append("                        <div>")
        //            .Append("                            <button id=\"heartbtn\" class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
        //            .Append("                        </div>")
        //            .Append("                    </div>")
        //            .Append("</div>");

        //            Card1.Text += myCard.ToString();
        //        }
        //        reader.Close();

        //    }

        //}

}
}
