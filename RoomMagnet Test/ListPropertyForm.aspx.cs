// This is my ListedPropertyForm.aspx.cs form. It all compiles and I am pretty sure
// I have the logic correct, the FileUpload1_Click method just does not fire, page_load does...


using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Amazon.S3;
using Amazon.S3.Transfer;
using awsTestUpload;
using System.Collections;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

public partial class ListPropertyForm : System.Web.UI.Page
{
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

    SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        FileUpload1_Click(sender, e);

        txtCountry.Text = "US";
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
    }

    protected void btnListProperty_Click(object sender, EventArgs e)
    {
        Property newProperty = new Property(HttpUtility.HtmlEncode(txtHouseNum.Text), HttpUtility.HtmlEncode(txtStreet.Text), HttpUtility.HtmlEncode(txtCity.Text), ddState.SelectedValue, HttpUtility.HtmlEncode(txtZip.Text), HttpUtility.HtmlEncode(txtCountry.Text));

        if (cbGuest.Checked == true)
            txtOtherRules.Text = "it works";

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = "server=aa1evano00xv2xb.cqpnea2xsqc1.us-east-1.rds.amazonaws.com;database=roommagnetdb;uid=admin;password=Skylinejmu2019;";
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        sc.Open();

        string description = HttpUtility.HtmlEncode(Request.Form["descriptionBox"]);

        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@houseNum", newProperty.getHouseNumber()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@street", newProperty.getStreet()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@city", newProperty.getCity()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@homeState", newProperty.getHomeState()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@zip", newProperty.getZip()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@country", newProperty.getCountry()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@date", newProperty.getModDate()));
        insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@description", description));


        insert.CommandText = "INSERT INTO PROPERTY VALUES(@houseNum, @street, @city, @homeState, @zip, @country, 0, 0, 0, 0, @date, 7);" +
            "INSERT INTO PropertyRoom(0, @description, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);";

        string check = insert.CommandText;
        Console.Write(check);
        insert.ExecuteNonQuery();

        sc.Close();

        txtHouseNum.Text = "";
        txtStreet.Text = "";
        txtCity.Text = "";
        ddState.ClearSelection();
        txtZip.Text = "";
        txtCountry.Text = "US";

        string propertyIdQuery = "SELECT MAX(PropertyID) from Property";
        System.Data.SqlClient.SqlCommand propertyIdGrab = new System.Data.SqlClient.SqlCommand(propertyIdQuery, sc);
        sc.Open();

        int propertyID = (int)propertyIdGrab.ExecuteScalar();

        sc.Close();

        string roomIdQuery = "SELECT MAX(RoomID) from PropertyRoom";
        System.Data.SqlClient.SqlCommand roomIdGrab = new System.Data.SqlClient.SqlCommand(roomIdQuery, sc);
        sc.Open();
        int roomID = (int)roomIdGrab.ExecuteScalar();
        sc.Close();

        System.Data.SqlClient.SqlCommand imageLink = new System.Data.SqlClient.SqlCommand();
        imageLink.Connection = sc;
        imageLink.Parameters.Add(new System.Data.SqlClient.SqlParameter("@propID", propertyID));
        imageLink.Parameters.Add(new System.Data.SqlClient.SqlParameter("@roomID", roomID));

        for (int i = 0; i < imageId.Capacity; i++)
        {
            string arrayImageId = imageId[i].ToString();
            imageLink.Parameters.Add(new System.Data.SqlClient.SqlParameter("@insertImage", arrayImageId));
            imageLink.CommandText = "UPDATE PropertyRoomImages SET PropertyID = @propID, RoomID = @roomID WHERE ImagesID = @insertImage";
            imageLink.ExecuteNonQuery();
        }
        imageId.Clear();

        Response.Redirect("HostDashboard.aspx");
    }

    ArrayList imageId = new ArrayList();
    protected void FileUpload1_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            Stream st = FileUploadControl.PostedFile.InputStream;
            string name = Path.GetFileName(FileUploadControl.FileName);
            string myBucketName = "elasticbeanstalk-us-east-1-606091308774"; //your s3 bucket name goes here  
            string s3DirectoryName = "PropertyImages";
            string s3FileName = @name;
            bool a;
            AmazonUploader myUploader = new AmazonUploader();
            a = myUploader.sendMyFileToS3(st, myBucketName, s3DirectoryName, s3FileName);

            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = "server=aa1evano00xv2xb.cqpnea2xsqc1.us-east-1.rds.amazonaws.com;database=roommagnetdb;uid=admin;password=Skylinejmu2019;";
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            sc.Open();

            insert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@imagefilename", s3FileName));
            insert.CommandText = "INSERT INTO ProprtyRoomImages VALUES(@imagefilename)";

            string check = insert.CommandText;
            Console.Write(check);
            insert.ExecuteNonQuery();

            sc.Close();

            string selectQ = "SELECT MAX(ImagesID) from PropertyRoomImages";
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand(selectQ, sc);
            sc.Open();
            imageId.Add((int)select.ExecuteScalar());

            StatusLabel.Text = "Imaged Saved!";
        }
        else
        {
            StatusLabel.Text = "";
        }
        //if (FileUploadControl.HasFiles)
        //{
        //    foreach (HttpPostedFile uploadedFile in FileUploadControl.PostedFiles)
        //    {
        //        Stream st = uploadedFile.InputStream;
        //        string name = Path.GetFileName(FileUploadControl.FileName);
        //        string myBucketName = "elasticbeanstalk-us-east-1-606091308774"; //your s3 bucket name goes here  
        //        string s3DirectoryName = "PropertyImages";
        //        string s3FileName = @name;
        //        bool a;
        //        AmazonUploader myUploader = new AmazonUploader();
        //        a = myUploader.sendMyFileToS3(st, myBucketName, s3DirectoryName, s3FileName);
        //        StatusLabel.Text = "Imaged Saved!";
        //    }

        //}
        //else
        //{
        //    StatusLabel.Text = "";
        //}
    }
}





