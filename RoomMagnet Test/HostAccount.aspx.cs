using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HostAccount : System.Web.UI.Page
{
    public static DateTime ModifiedDate = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        Label1.Text = "hi";

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "server=aa1evano00xv2xb.cqpnea2xsqc1.us-east-1.rds.amazonaws.com;database=roommagnetdb;uid=admin;password=Skylinejmu2019;";
        sc.Open();
        System.Data.SqlClient.SqlCommand checkEmailCount = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand checkAcctType = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        checkEmailCount.Connection = sc;
        checkAcctType.Connection = sc;
        insert.Connection = sc;

        int emailCount;
        int acctTypeCount;

        //create new account and host object
        Account newAccount = new Account(txtFN.Text, txtMN.Text, txtLN.Text, txtPhone.Text, DateTime.Parse(txtBday.Text), txtEmail.Text, txtHouseNum.Text, txtStreet.Text, txtCity.Text, ddState.SelectedValue, txtZip.Text, "US", Int32.Parse("2"), Int32.Parse("2"));
        Host newHost = new Host(newAccount, "N", "Retiree");

        checkEmailCount.CommandText = "SELECT COUNT(*) FROM ACCOUNT WHERE EMAIL = @emailCheck";
        checkEmailCount.Parameters.Add(new SqlParameter("@emailCheck", newAccount.getEmail()));

        emailCount = (int)checkEmailCount.ExecuteScalar();

        if (emailCount < 2)
        {
            checkAcctType.CommandText = "SELECT COUNT(*) FROM ACCOUNT WHERE EMAIL = @emailCheck AND AccountType = 2";
            checkAcctType.Parameters.Add(new SqlParameter("@emailCheck", newAccount.getEmail()));

            acctTypeCount = (int)checkAcctType.ExecuteScalar();

            if (emailCount == 1 && acctTypeCount == 0)
            {
                insert.CommandText = "INSERT into Account VALUES (@fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); " +
                    "INSERT into Host VALUES(@@Identity, @BackCheck, @HostReason);" +
                    "INSERT into Password VALUES((SELECT MAX(HostID) from HostID), @email, @password);";

                //Insert into ACCOUNT
                insert.Parameters.Add(new SqlParameter("@fName", newHost.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newHost.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newHost.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newHost.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newHost.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newHost.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newHost.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newHost.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newHost.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newHost.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newHost.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newHost.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newHost.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newHost.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newHost.getPID()));

                //Insert into HOST
                insert.Parameters.Add(new SqlParameter("@BackCheck", newHost.getBackCheck()));
                insert.Parameters.Add(new SqlParameter("@HostReason", newHost.getHostReason()));

                //Insert into PASSWORD
                insert.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password

                insert.ExecuteNonQuery();

                Label1.Text = "Success";

                sc.Close();
            }
            else if (emailCount == 0)
            {
                insert.CommandText = "INSERT into Account VALUES (@fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); " +
                   "INSERT into Host VALUES(@@Identity, @BackCheck, @HostReason);" +
                   "INSERT into Password VALUES((SELECT MAX(HostID) from HostID), @email, @password);";

                //Insert into ACCOUNT
                insert.Parameters.Add(new SqlParameter("@fName", newHost.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newHost.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newHost.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newHost.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newHost.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newHost.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newHost.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newHost.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newHost.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newHost.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newHost.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newHost.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newHost.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newHost.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newHost.getPID()));

                //Insert into HOST
                insert.Parameters.Add(new SqlParameter("@BackCheck", newHost.getBackCheck()));
                insert.Parameters.Add(new SqlParameter("@HostReason", newHost.getHostReason()));

                //Insert into PASSWORD
                insert.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password

                insert.ExecuteNonQuery();

                Label1.Text = "Success";

                sc.Close();
            }
            else
            {
                Label1.Text = "Error";
                sc.Close();
            }
        }
    }
}