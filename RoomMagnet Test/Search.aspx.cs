using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    private static string connection = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    SqlConnection sc = new SqlConnection(connection);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    [System.Web.Services.WebMethod]
    protected void btnSearch_Click(object sender, EventArgs e)
    {
            String property = txtSearch.Text;
            int split = property.IndexOf(",");
            String city = property.Substring(0, split).ToUpper();
            String street = property.Substring(split + 1).ToUpper();
            GridviewBackup.SelectCommand = "SELECT [City],[HomeState],[Zip],[RoomPriceRangeLow] FROM [dbo].[Property] WHERE upper(City)= "+city+ "AND upper(HomeState)= "+street+";";
            PropertyUpdateTable.DataBind();
    }
    //[WebMethod]
    //public static List<string> GetLocation(string pre)
    //{
    //    List<string> Locations = new List<string>();
    //    Locations.Add("Washington, DC");
    //    Locations.Add("Fairfax, VA");
    //    Locations.Add("McLean, VA");
    //    Locations.Add("Alexandria, VA");
    //    Locations.Add("Arlington, VA");
    //    Locations.Add("Vienna, VA");
    //    Locations.Add("Chantilly, VA");
    //    Locations.Add("Baltimore, MD");
    //    Locations.Add("Centreville, VA");
    //    Locations.Add("Falls Church, VA"); 

    //    return Locations;
    //}

    protected void PropertyUpdateTable_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}