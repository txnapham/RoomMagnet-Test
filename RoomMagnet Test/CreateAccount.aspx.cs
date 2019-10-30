using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CreateAccount : System.Web.UI.Page
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

    protected void createAccountButton_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server = DESKTOP-E6AC6T4\TINASERVER; Database=RoomMagnet; Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        //create new student object
        //Account newAccount = new Account(txtPassword.Text, txtFN.Text, txtLN.Text, txtEmail.Text);

        //insert.CommandText = "INSERT into simAcc VALUES (@password, @fName, @lName, @email);";
        //insert.Parameters.Add(new SqlParameter("@password", newAccount.getPassword()));
        //insert.Parameters.Add(new SqlParameter("@fName", newAccount.getFirstName()));
        //insert.Parameters.Add(new SqlParameter("@lName", newAccount.getLastName()));
        //insert.Parameters.Add(new SqlParameter("@email", newAccount.getEmail()));
        //insert.ExecuteNonQuery();
        //sc.Close();
    }
}