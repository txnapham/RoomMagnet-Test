using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
public partial class TenantDashboard : System.Web.UI.Page
{
    //sc Connection
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
        //Select Statement
        System.Data.SqlClient.SqlCommand selectUserName = new System.Data.SqlClient.SqlCommand();

        //Connection
        selectUserName.Connection = sc;
        sc.Open();

        //User Name Select
        selectUserName.CommandText = "SELECT FirstName FROM Account WHERE (AccountID = FILL IN ) ;";

        //Populate Dashboard with Admin Name
        System.Data.SqlClient.SqlDataReader nameReader = selectUserName.ExecuteReader();
        while (nameReader.Read())
        {
            String firstName = nameReader["FirstName"].ToString();

            //StringBuilder
            StringBuilder nameCard = new StringBuilder();
            nameCard.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + "Welcome, " + firstName + "</a></li>");
            UserNameCard.Text += nameCard.ToString();
        }
        nameReader.Close();
    }
}