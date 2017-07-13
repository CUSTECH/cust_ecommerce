using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display_Product_IMage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = "~/images/";
        string ImgFile = Request.QueryString["file"];
        path += ImgFile;
        Image1.ImageUrl = path;
    }
}