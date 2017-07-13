using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mobil_View_By_Supplyer : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Browser.IsMobileDevice)
            {
              MasterPageFile = "~/Site.master";
             // Response.Redirect("Mobil_View_By_Supplyer.aspx");
            }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}