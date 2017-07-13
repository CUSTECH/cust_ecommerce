using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mobile_View_By_Discount : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Browser.IsMobileDevice)
        {
            MasterPageFile = "~/Site.master";
    
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}