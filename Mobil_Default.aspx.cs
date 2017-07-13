using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mobil_Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Browser.IsMobileDevice)
        {
            MasterPageFile = "~/Site.master";
           // Response.Redirect("Mobil_Default.aspx");

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}