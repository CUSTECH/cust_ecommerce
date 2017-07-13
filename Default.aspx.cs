using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Browser.IsMobileDevice)
        {
            MasterPageFile = "~/Site.master";

           // Response.Redirect("Mobil_Default.aspx");

        }
    }
    protected void ImageButton_Left_Click(object sender, ImageClickEventArgs e)
    {
        
        String Slide_Picture_Number_String = Slide_Image.ImageUrl.Replace("~/Slide_Picture/Slide_", "");
        Slide_Picture_Number_String = Slide_Picture_Number_String.Replace(".jpg", "");
        int Slide_Number = Convert.ToInt32(Slide_Picture_Number_String);
        if (Slide_Number <=1)
            Slide_Number = 3;
        else
            Slide_Number--;
        Slide_Image.ImageUrl = "~/Slide_Picture/Slide_" + Slide_Number.ToString() + ".jpg";
     //   String Slide_Picture_Number_String = Slide_Image.ImageUrl.Replace("~/Slide_Picture/Slide_", "");
     //   Slide_Picture_Number_String = Slide_Picture_Number_String.Replace(".png", "");
     //   int Slide_Number = Convert.ToInt32(Slide_Picture_Number_String);
     //   if (Slide_Number <= 1)
     //       Slide_Number = 9;
     //   else
     //       Slide_Number--;
     //   Slide_Image.ImageUrl = "~/Slide_Picture/Slide_" + Slide_Number.ToString() + ".png";
    }

    protected void ImageButton_Right_Click(object sender, ImageClickEventArgs e)
    {
        String Slide_Picture_Number_String = Slide_Image.ImageUrl.Replace("~/Slide_Picture/Slide_", "");
        Slide_Picture_Number_String = Slide_Picture_Number_String.Replace(".jpg", "");
        int Slide_Number = Convert.ToInt32(Slide_Picture_Number_String);
        if (Slide_Number >= 3)
            Slide_Number = 1;
        else
            Slide_Number++;
        Slide_Image.ImageUrl = "~/Slide_Picture/Slide_" + Slide_Number.ToString() + ".jpg";
      //  String Slide_Picture_Number_String = Slide_Image.ImageUrl.Replace("~/Slide_Picture/Slide_", "");
      //  Slide_Picture_Number_String = Slide_Picture_Number_String.Replace(".png", "");
      //  int Slide_Number = Convert.ToInt32(Slide_Picture_Number_String);
      //  if (Slide_Number >= 9)
      //      Slide_Number = 1;
      //  else
      //      Slide_Number++;
      //  Slide_Image.ImageUrl = "~/Slide_Picture/Slide_" + Slide_Number.ToString() + ".png";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
}