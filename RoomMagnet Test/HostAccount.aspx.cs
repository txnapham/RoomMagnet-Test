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

    }
}