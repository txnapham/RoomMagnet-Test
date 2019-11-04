using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Search : System.Web.UI.Page
{

    System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    [System.Web.Services.WebMethod]
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtSearch.Text))
        {
            // Do nothing
        }
        else
        {
            ////Breaking down the searchbox text
            //DataTable propertyDataTable = new DataTable();
            //String property = txtSearch.Text;
            //int split = property.IndexOf(",");
            //String city = property.Substring(0, split);
            //String state = property.Substring(split + 1);
            ////New select queries
            //SqlCommand select = new SqlCommand();
            ////Query that selects data
            //select.CommandText = "select [City], [HomeState], [Zip], [RoomPriceRangeLow], [RoomPriceRangeHigh] from [dbo].[Property] " + "Where [City] = @City AND [HomeState] = @HomeState";
            //select.Parameters.AddWithValue("@City", city);
            //select.Parameters.AddWithValue("@State", state);

            string tSearch = HttpUtility.HtmlEncode(txtSearch.Text);
            sqlConn.Open();
            DataTable propertyDataTable = new DataTable();
            propertyDataTable.Clear();
            int firstSpaceIndex = tSearch.IndexOf(" ");
            string cityString = tSearch.Substring(firstSpaceIndex + 1);
            SqlDataAdapter sqlDa = new SqlDataAdapter("select [City], [HomeState], [PropertyID] from[dbo].[Property] where upper([City]) like upper('%" + cityString + "%');", sqlConn);
            sqlDa.Fill(propertyDataTable);
            if (propertyDataTable.Rows.Count == 0)
            {
                propertyDataTable.Clear();
            }
            else
            {
                PropertyUpdateTable.DataSource = propertyDataTable;
                PropertyUpdateTable.DataBind();
                PropertyUpdateTable.Visible = true;
            }
        }
    }
}