using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    private static string connection = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    SqlConnection sc = new SqlConnection(connection);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethod]
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //if (String.IsNullOrEmpty(searchBox.Text))
        //{

        //}
        //else
        //{
        //    String property = searchBox.Text;
        //    int space = property.IndexOf(" ");
        //    String houseNum = property.Substring(0, space);
        //    String street = property.Substring(space + 1);
        //    //New select queries
        //    SqlCommand select = new SqlCommand();
        //    SqlDataReader rdr = null;
        //    //Query that selects info and populates text boxes
        //    select.CommandText = "select [CityCounty],[HomeState],[Country],[Zip],[MonthlyPrice],[EffectiveDate],[TerminationDate],[RenterID]from [Lab3].[dbo].[Property] " +
        //        "Where [HouseNumber] = @HouseNumber AND [Street] = @Street;";
        //    select.Parameters.AddWithValue("@HouseNumber", houseNum);
        //    select.Parameters.AddWithValue("@Street", street);
        //}
    }
}