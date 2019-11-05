﻿using System;
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
        txtCountry.Enabled = false;
        txtCountry.Text = "US";
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


        //Age Label & Birthday Validation
        DateTime now = DateTime.Now;
        DateTime DOB = Convert.ToDateTime(txtBday.Text);
        int tenantAge = new DateTime(DateTime.Now.Subtract(DOB).Ticks).Year - 1;
        DateTime lastYear = DOB.AddYears(tenantAge);
        int months = 0;

        for (int i = 0; i <= 12; i++)
        {
            if (lastYear.AddMonths(i) == now)
            {
                months = i;
                break;
            }
            else if (lastYear.AddMonths(i) >= now)
            {
                months = i - 1;
                break;
            }
        }

        int days = now.Subtract(lastYear.AddMonths(months)).Days;
        int hours = now.Subtract(lastYear).Hours;

        if (tenantAge < 18)
        {
            resultLabel.Visible = true;
            resultLabel.Text = "Must be over 18 years old.";
        }
        else
        {

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

                    //Clear text boxes
                    sc.Close();
                    txtFN.Text = "";
                    txtMN.Text = "";
                    txtLN.Text = "";
                    txtBday.Text = "";
                    txtEmail.Text = "";
                    txtPhone.Text = "";
                    txtPassword.Text = "";
                    txtHouseNum.Text = "";
                    txtStreet.Text = "";
                    txtCity.Text = "";
                    ddState.ClearSelection();
                    txtZip.Text = "";
                    txtCountry.Text = "US";

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

                    //Clear text boxes
                    txtFN.Text = "";
                    txtMN.Text = "";
                    txtLN.Text = "";
                    txtBday.Text = "";
                    txtEmail.Text = "";
                    txtPhone.Text = "";
                    txtPassword.Text = "";
                    txtHouseNum.Text = "";
                    txtStreet.Text = "";
                    txtCity.Text = "";
                    ddState.ClearSelection();
                    txtZip.Text = "";
                    txtCountry.Text = "US";
                }
                else
                {
                    sc.Close();
                    //Clear text boxes
                    txtFN.Text = "";
                    txtMN.Text = "";
                    txtLN.Text = "";
                    txtBday.Text = "";
                    txtEmail.Text = "";
                    txtPhone.Text = "";
                    txtPassword.Text = "";
                    txtHouseNum.Text = "";
                    txtStreet.Text = "";
                    txtCity.Text = "";
                    ddState.ClearSelection();
                    txtZip.Text = "";
                    txtCountry.Text = "US";
                }
            }
        }
    }
}