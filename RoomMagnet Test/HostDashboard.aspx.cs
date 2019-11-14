using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HostDashboard : System.Web.UI.Page
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
            //Select Statements for tenant and properties
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand selectProp = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand favoriteTenant = new System.Data.SqlClient.SqlCommand();
            //Tenant Select
            select.CommandText = "SELECT FirstName,LastName FROM Account WHERE AccountID in " +
            "(SELECT TOP(5) tenantID FROM Lease WHERE HostID = " + accountID + ");";
            //Property Select
            selectProp.CommandText = "SELECT HouseNumber,Street FROM Property WHERE PropertyID in (SELECT propertyID FROM PropertyRoom WHERE "+
                "RoomID in (Select RoomID from Lease where HostID = " + accountID + "));";
            //Message Center Tenant Populating once they favorite the current host's property
            favoriteTenant.CommandText = "select firstName, LastName from account where AccountID in (select tenantID from tenant where TenantID in " +
                "(select tenantID from FavoritedProperties where PropertyID in (select PropertyID from property where hostID ="+ accountID +")));";
            //Connections
            select.Connection = sc;
            selectProp.Connection = sc;
            favoriteTenant.Connection = sc;
            sc.Open();

            //Populating Tenant Part of Host Dashboard
            System.Data.SqlClient.SqlDataReader reader = select.ExecuteReader();
            while (reader.Read())
            {
                String firstName = reader["FirstName"].ToString();
                String lastName = reader["LastName"].ToString();

                StringBuilder myCard = new StringBuilder();
                myCard
                .Append("<li><a href=\"#\" class=\"tenantdashlist\">" +firstName+" "+lastName + "</a></li>");
                Card.Text += myCard.ToString();
            }
            reader.Close();
            //Populating Property Part of Host Dashboard
            System.Data.SqlClient.SqlDataReader rdr = selectProp.ExecuteReader();
            while (rdr.Read())
            {
                String HouseNum = rdr["HouseNumber"].ToString();
                String Street = rdr["Street"].ToString();

                StringBuilder myCard2 = new StringBuilder();
                myCard2
                .Append("<li><a href=\"#\" class=\"tenantdashlist\">" + HouseNum + " " + Street + "</a></li>");
                Card2.Text += myCard2.ToString();
            }
            rdr.Close();
            //Populating Message Center Matches
            System.Data.SqlClient.SqlDataReader drd = favoriteTenant.ExecuteReader();
            while (drd.Read())
            {
                String firstName = drd["FirstName"].ToString();
                String lastName = drd["LastName"].ToString();

                StringBuilder myCard = new StringBuilder();
                myCard
                    .Append("<div class=\"chat-list\">")
                    .Append("           <div class=\"chat-people\">")
                    .Append("               <div class=\"chat-img\"> <img src = \"images/rebeccajames.png\" class=\"rounded-circle img-fluid\"></div>")
                    .Append("                <div class=\"chat-ib\">")
                    .Append("                    <h5>" + firstName+" " + lastName + "<span class=\"chat-date\"> Nov 12</span></h5>")
                    .Append("                    <p>Hello, I'm interested in your property.</p>")
                    .Append("                </div>")
                    .Append("            </div>")
                    .Append("        </div>")
                    .Append("        </div>");

                Card3.Text += myCard.ToString();
            }
            drd.Close();
            sc.Close();
        }
    }
}