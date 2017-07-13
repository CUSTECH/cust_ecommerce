using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetailsItem : System.Web.UI.Page

{
   
    protected void Page_Load(object sender, EventArgs e)   
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string 商品編號 = Request.QueryString["Id"]; // 取得商品編號
        // 建立Cookie儲存選購商品
        if (Request.Cookies["CUST E-Commerce" + 商品編號] != null)
        {
            // 存在, 更新數量
            int quantity = Convert.ToInt32(Request.Cookies["CUST E-Commerce" + 商品編號]["Quantity"]);
            Response.Cookies["CUST E-Commerce" + 商品編號]["ID"] = 商品編號;
            quantity += Convert.ToInt32(txtQuantity.Text);
            Response.Cookies["CUST E-Commerce" + 商品編號]["Quantity"] = quantity.ToString();
        }
        else
        {
            // 不存在, 建立新Cookie
            Response.Cookies["CUST E-Commerce" + 商品編號]["ID"] = 商品編號;
            Response.Cookies["CUST E-Commerce" + 商品編號]["Quantity"] = txtQuantity.Text;
        }
        Response.Cookies["CUST E-Commerce" + 商品編號].Expires = DateTime.Today.AddDays(10);
        Response.Redirect("ShoppingCart.aspx"); // 轉址至購物車      
    }
}