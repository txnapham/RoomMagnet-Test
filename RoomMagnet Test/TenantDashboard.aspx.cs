using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TenantDashboard : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

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
        if (string.IsNullOrEmpty(HttpContext.Current.Session["AccountId"].ToString()))
        {
        }
        else
        {
            int accountID = Convert.ToInt16(HttpContext.Current.Session["AccountId"].ToString());
            //Selecting from Property
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
            select.CommandText = "SELECT City, HomeState, LocalPriceRangeLow, LocalPriceRangeHigh FROM Property WHERE PropertyID in " +
            "(SELECT TOP(3) PropertyID FROM FavoritedProperties WHERE TenantID = " + accountID + ");";
            select.Connection = sc;
            sc.Open();
            System.Data.SqlClient.SqlDataReader reader = select.ExecuteReader();
            //Populating Dashboard
            while (reader.Read())
            {
                String city = reader["City"].ToString();
                String homeState = reader["HomeState"].ToString();
                String priceRangeLow = reader["LocalPriceRangeLow"].ToString();
                String priceRangeHigh = reader["LocalPriceRangeHigh"].ToString();
                double priceLowRounded = Math.Round(Convert.ToDouble(priceRangeLow), 0, MidpointRounding.ToEven);
                double priceHighRounded = Math.Round(Convert.ToDouble(priceRangeHigh), 0, MidpointRounding.ToEven);

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
                .Append("                            <button type=\"button\" id=\"heartbtn\" class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"far fa-heart\"></i></button>")
                .Append("                        </div>")
                .Append("                    </div>")
                .Append("</n 4div>");
                Card2.Text += myCard.ToString();
            }
            reader.Close();
            sc.Close();
        }
    }
}