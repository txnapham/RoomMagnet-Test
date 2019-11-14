using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

public partial class AdminDashboard : System.Web.UI.Page
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
        //Select Statement for Host and Tenant to Populate on Dash
        System.Data.SqlClient.SqlCommand selectHost = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectTenant = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectIntendedHostLease = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectIntendedTenantLease = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectUsers = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectLeases = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand selectUserName = new System.Data.SqlClient.SqlCommand();
        //Connections
        selectHost.Connection = sc;
        selectTenant.Connection = sc;
        selectIntendedHostLease.Connection = sc;
        selectIntendedTenantLease.Connection = sc;
        selectUsers.Connection = sc;
        selectLeases.Connection = sc;
        selectUserName.Connection = sc;
        sc.Open();

        //Host Select
        selectUserName.CommandText = "SELECT FirstName FROM Account WHERE (AccountID = FILL IN ) ;";

        //Host Select
        selectHost.CommandText = "SELECT TOP(5) FirstName, LastName FROM Account WHERE (AccountType = 2);";

        //Tenant Select 
        selectTenant.CommandText = "SELECT TOP(5) FirstName, LastName FROM Account WHERE (AccountType = 3);";

        //Intended Host Lease Select
        selectIntendedHostLease.CommandText = "SELECT TOP(5) firstName, LastName from account where AccountID in " +
            "(select hostID from Host where hostID in (select HostID from lease)); ";
        //Intended Tenant Lease Select
        selectIntendedTenantLease.CommandText = "SELECT TOP(5) firstName, LastName from account where AccountID in " +
            "(select tenantId from Tenant where tenantID in (select tenantID from lease));";

        //Select Number of Users 
        selectUsers.CommandText = "SELECT COUNT(*) FROM Account;";
        int userCount = (int)selectUsers.ExecuteScalar();

        //Number of Leases
        selectLeases.CommandText = "SELECT COUNT(*) FROM Lease;";
        int leaseCount = (int)selectLeases.ExecuteScalar();



        //Populate Dashboard with Host Info 
        System.Data.SqlClient.SqlDataReader reader = selectHost.ExecuteReader();
        while (reader.Read())
        {
            String firstName = reader["FirstName"].ToString();
            String lastName = reader["LastName"].ToString();
            //StringBuilder
            StringBuilder myCard = new StringBuilder();
            myCard.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + firstName + " " + lastName + "</a></li>");
            Card.Text += myCard.ToString();
        }
        reader.Close();

        //Populate Dashboard with Tenant Info 
        System.Data.SqlClient.SqlDataReader rdr = selectTenant.ExecuteReader();
        while (rdr.Read())
        {
            String firstName = rdr["FirstName"].ToString();
            String lastName = rdr["LastName"].ToString();
            //StringBuilder
            StringBuilder myCard2 = new StringBuilder();
            myCard2.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + firstName + " " + lastName + "</a></li>");
            Card2.Text += myCard2.ToString();
        }
        rdr.Close();

        //Reader to select intended leases
        System.Data.SqlClient.SqlDataReader hostRdr = selectIntendedHostLease.ExecuteReader();
        while (hostRdr.Read())
        {
            String firstName = hostRdr["FirstName"].ToString();
            String lastName = hostRdr["LastName"].ToString();
            //StringBuilder
            StringBuilder myCard3 = new StringBuilder();
            myCard3.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + "Host: "+firstName + " " + lastName);
            Card3.Text += myCard3.ToString();
        }
        hostRdr.Close();

        System.Data.SqlClient.SqlDataReader tenantRdr = selectIntendedTenantLease.ExecuteReader();
        while (tenantRdr.Read())
        {
            String firstName = tenantRdr["FirstName"].ToString();
            String lastName = tenantRdr["LastName"].ToString();
            //StringBuilder
            StringBuilder myCard3 = new StringBuilder();
            myCard3.Append(" Tenant: " + firstName + " " + lastName + "</a></li>");
            Card3.Text += myCard3.ToString();
        }
        tenantRdr.Close();
        sc.Close();

        //StringBuilder for Amount of Users
        StringBuilder myCard4 = new StringBuilder();
        myCard4.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + "Number of Users: " + userCount + "</a></li>");
        Card4.Text += myCard4.ToString();

    
        //StringBuilder
        StringBuilder myCard5 = new StringBuilder();
        myCard5.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + "Number of Users: " + leaseCount + "</a></li>");
        Card5.Text += myCard5.ToString();


        //Populate Dashboard with Admin Name
        System.Data.SqlClient.SqlDataReader nameReader = selecty.ExecuteReader();
        while (nameReader.Read())
        {
            String firstName = nameReader["FirstName"].ToString();
           
            //StringBuilder
            StringBuilder nameCard = new StringBuilder();
            nameCard.Append("<li><a href =\"#\" class=\"tenantdashlist\">" + "Welcome, "+ firstName + "</a></li>");
            UserNameCard.Text += nameCard.ToString();
        }
        nameReader.Close();


    }
}