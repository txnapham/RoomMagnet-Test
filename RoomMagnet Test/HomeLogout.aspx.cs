using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeLogout : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Session.Clear();
        if (Session["type"] != null)
        {
            this.MasterPageFile = "~/MasterPage.master";
        }
        else if (Session["type"] == null)
        {
            this.MasterPageFile = "~/MasterPage.master";
        }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}