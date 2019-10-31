﻿using System;
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
        Account newAccount = new Account(txtFN.Text, "T", txtLN.Text, "123-456-7890", DateTime.Parse("01/11/1997"), txtEmail.Text, "800", "South Main St", "Harrisonburg", "VA", "22025", "US", Int32.Parse("2"), DateTime.Parse("10/29/2019"), Int32.Parse("2"));
        Host newHost = new Host("N", "Retiree");

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
                insert.Parameters.Add(new SqlParameter("@fName", newAccount.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newAccount.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newAccount.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newAccount.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newAccount.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newAccount.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newAccount.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newAccount.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newAccount.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newAccount.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newAccount.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newAccount.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newAccount.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newAccount.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newAccount.getPID()));

                //Insert into HOST
                insert.Parameters.Add(new SqlParameter("@BackCheck", newHost.getBackCheck()));
                insert.Parameters.Add(new SqlParameter("@HostReason", newHost.getHostReason()));

                //Insert into PASSWORD
                insert.Parameters.Add(new SqlParameter("@password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password

                insert.ExecuteNonQuery();

                Label1.Text = "Success";

                sc.Close();
            }
            else if(emailCount == 0)
            {
                insert.CommandText = "INSERT into Account VALUES (@fName, @mName, @lName, @phone, @bday, @email, @HouseNbr, @street, @city, @state, @zip, @country, @AccType, @ModDate, @PID); " +
                    "INSERT into Host VALUES(@@Identity, @BackCheck, @HostReason);" +
                    "INSERT into Password VALUES((SELECT MAX(HostID) from Host), @email, @password);";

                //Insert into ACCOUNT
                insert.Parameters.Add(new SqlParameter("@fName", newAccount.getFirstName()));
                insert.Parameters.Add(new SqlParameter("@mName", newAccount.getMiddleName()));
                insert.Parameters.Add(new SqlParameter("@lName", newAccount.getLastName()));
                insert.Parameters.Add(new SqlParameter("@phone", newAccount.getPhone()));
                insert.Parameters.Add(new SqlParameter("@bday", newAccount.getBday()));
                insert.Parameters.Add(new SqlParameter("@email", newAccount.getEmail()));
                insert.Parameters.Add(new SqlParameter("@HouseNbr", newAccount.getHouseNumber()));
                insert.Parameters.Add(new SqlParameter("@street", newAccount.getStreet()));
                insert.Parameters.Add(new SqlParameter("@city", newAccount.getCity()));
                insert.Parameters.Add(new SqlParameter("@state", newAccount.getState()));
                insert.Parameters.Add(new SqlParameter("@zip", newAccount.getZip()));
                insert.Parameters.Add(new SqlParameter("@country", newAccount.getCountry()));
                insert.Parameters.Add(new SqlParameter("@AccType", newAccount.getAccType()));
                insert.Parameters.Add(new SqlParameter("@ModDate", newAccount.getModDate()));
                insert.Parameters.Add(new SqlParameter("@PID", newAccount.getPID()));

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

            }
        }
    }
}