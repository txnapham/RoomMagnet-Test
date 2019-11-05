using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TenantDashboard : System.Web.UI.Page
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

        protected void Page_Load(object sender, EventArgs e)
        {
        int count = 0;
            StringBuilder myCard = new StringBuilder();
            myCard
                .Append("<div class=\"col-md-3\">")
                .Append("<div class=\"card  shadow-sm  mb-4\" >")
                .Append("                        <img src=\"images/scott-webb-1ddol8rgUH8-unsplash.jpg\" class=\"card-img-top\" alt=\"image\">")
                .Append("                        <a href=\"search-result-page-detail.html\" class=\"cardLinks\">")
                .Append("                            <div class=\"card-body\">")
                .Append("                                <h5 class=\"card-title\">" + Session["city"] + ", " + Session["homeState"] + "</h5>")
                .Append("                                <p class=\"card-text\">" + "$" + Session["priceLow"] + " - " + "$" + Session["priceHigh"] + "</p>")
                .Append("                            </div>")
                .Append("                        </a>")
                .Append("")
                .Append("                        <div>")
                .Append("                            <button type=\"button\" id=\"heartbtn" + count + "\"class=\"btn favoriteHeartButton\"><i id=\"hearti\" class=\"fas fa-heart\"></i></button>")
                .Append("                        </div>")
                .Append("                    </div>")
                .Append("</div>");

            count++;
            Card2.Text += myCard.ToString();
        
        }
}