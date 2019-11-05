using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TenantAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
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
        Account newAccount = new Account(txtFN.Text, txtMN.Text, txtLN.Text, txtPhone.Text, DateTime.Parse(txtBday.Text), txtEmail.Text, txtHouseNum.Text, txtStreet.Text, txtCity.Text, ddState.SelectedValue, txtZip.Text, "US", Int32.Parse("3"), Int32.Parse("3"));
        Tenant newTenant = new Tenant(newAccount, "N", "Student");

        checkEmailCount.CommandText = "SELECT COUNT(*) FROM ACCOUNT WHERE EMAIL = @emailCheck";
        checkEmailCount.Parameters.Add(new SqlParameter("@emailCheck", newAccount.getEmail()));

        emailCount = (int)checkEmailCount.ExecuteScalar();

        if (emailCount < 2)
        {
            checkAcctType.CommandText = "SELECT COUNT(*) FROM ACCOUNT WHERE EMAIL = @emailCheck AND AccountType = 3";
            checkAcctType.Parameters.Add(new SqlParameter("@emailCheck", newAccount.getEmail()));

            acctTypeCount = (int)checkAcctType.ExecuteScalar();

            if (emailCount == 1 && acctTypeCount == 0)
            {
                insert.CommandText = "INSERT into Account VALUES (@fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); " +
                                    "INSERT into Tenant VALUES(@@IDENTITY from Account), @BackCheck, @TenantReason);" +
                                    "INSERT into Password VALUES((SELECT MAX(TenantID) from Tenant), @email, @password);";

                //Insert into ACCOUNT
                insert.Parameters.Add(new SqlParameter("@fName", newTenant.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newTenant.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newTenant.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newTenant.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newTenant.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newTenant.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newTenant.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newTenant.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newTenant.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newTenant.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newTenant.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newTenant.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newTenant.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newTenant.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newTenant.getPID()));

                //Insert into HOST
                insert.Parameters.Add(new SqlParameter("@BackCheck", newTenant.getBackgroundStatus()));
                insert.Parameters.Add(new SqlParameter("@TenantReason", newTenant.getTenantReason()));

                //Insert into PASSWORD
                insert.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password

                insert.ExecuteNonQuery();

                sc.Close();
            }
            else if (emailCount == 0)
            {
                insert.CommandText = "INSERT into Account VALUES (@fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); " +
                     "INSERT into Tenant VALUES(@@IDENTITY, @BackCheck, @TenantReason);" +
                     "INSERT into Password VALUES((SELECT MAX(TenantID) from Tenant), @email, @password);";

                //Insert into ACCOUNT
                insert.Parameters.Add(new SqlParameter("@fName", newTenant.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newTenant.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newTenant.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newTenant.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newTenant.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newTenant.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newTenant.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newTenant.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newTenant.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newTenant.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newTenant.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newTenant.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newTenant.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newTenant.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newTenant.getPID()));

                //Insert into HOST
                insert.Parameters.Add(new SqlParameter("@BackCheck", newTenant.getBackgroundStatus()));
                insert.Parameters.Add(new SqlParameter("@TenantReason", newTenant.getTenantReason()));

                //Insert into PASSWORD
                insert.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password

                insert.ExecuteNonQuery();

                sc.Close();
            }
            else
            {
                sc.Close();
            }
        }
    }
}