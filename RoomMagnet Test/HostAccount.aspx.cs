using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HostAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = DESKTOP-E6AC6T4\TINASERVER; Database=RoomMagnet; Trusted_Connection=Yes;";
            sc.Open();
        }
        catch (Exception)
        {

        }
    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server = DESKTOP-E6AC6T4\TINASERVER; Database=RoomMagnet; Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        //create new student object
        Account newHostAccount = new Account(txtPassword.Text, txtFN.Text, "T", txtLN.Text, "123-456-7890", DateTime.Parse("01/11/1997"), txtEmail.Text, "800", "South Main St", "Harrisonburg", "VA", "22025", "US", "H", DateTime.Parse("10/29/2019"), Int32.Parse("1"));
        Host newHost = new Host("Y", "N", "Retiree");

        insert.CommandText = "INSERT into Account VALUES (@password, @fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); INSERT into Host VALUES(@@Identity, @pet, @backCheck, @HostType)";
        insert.Parameters.Add(new SqlParameter("@password", newHostAccount.getPassword()));
        insert.Parameters.Add(new SqlParameter("@fName", newHostAccount.getFirstName()));
        insert.Parameters.Add(new SqlParameter("@mName", newHostAccount.getMiddleName()));
        insert.Parameters.Add(new SqlParameter("@lName", newHostAccount.getLastName()));
        insert.Parameters.Add(new SqlParameter("@phone", newHostAccount.getPhone()));
        insert.Parameters.Add(new SqlParameter("@bday", newHostAccount.getBday()));
        insert.Parameters.Add(new SqlParameter("@email", newHostAccount.getEmail()));
        insert.Parameters.Add(new SqlParameter("@HouseNbr", newHostAccount.getHouseNumber()));
        insert.Parameters.Add(new SqlParameter("@street", newHostAccount.getStreet()));
        insert.Parameters.Add(new SqlParameter("@city", newHostAccount.getCity()));
        insert.Parameters.Add(new SqlParameter("@state", newHostAccount.getState()));
        insert.Parameters.Add(new SqlParameter("@zip", newHostAccount.getZip()));
        insert.Parameters.Add(new SqlParameter("@country", newHostAccount.getCountry()));
        insert.Parameters.Add(new SqlParameter("@AccType", newHostAccount.getAccType()));
        insert.Parameters.Add(new SqlParameter("@ModDate", newHostAccount.getModDate()));
        insert.Parameters.Add(new SqlParameter("@PID", newHostAccount.getPID()));

        //HOST
        insert.Parameters.Add(new SqlParameter("@pet", newHost.getPet()));
        insert.Parameters.Add(new SqlParameter("@backCheck", newHost.getBackCheck()));
        insert.Parameters.Add(new SqlParameter("@HostType", newHost.getHostType()));
        
        insert.ExecuteNonQuery();
        sc.Close();
    }
}