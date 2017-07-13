using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridView_Test : System.Web.UI.Page
{
    private double total = 0;
    private Boolean hasItem = false;
    static public string Order_List = "CUST E-Commerce \r\n";
    protected void Page_Init(object sender, EventArgs e)
    {


        // 宣告WHERE子句的IN條件 
        //  string Converted_string = HttpUtility.UrlEncode("商品編號");
        //  string where = "WHERE [Converted_string] IN (";

        string where = "WHERE [商品編號] IN (";

        bool isFirst = true;
        // 取出所有Cookie
        foreach (string ProductItem in Request.Cookies)
        {
            // 是否是購物車的Cookie
            if (ProductItem.StartsWith("CUST E-Commerce"))
            {
                if (isFirst) // 第1次
                {

                    where += "'" + Request.Cookies[ProductItem]["ID"] + "'";
                    Order_List = "CUST E-Commerce";
                    isFirst = false;
                }
                else
                {
                    where += ", '" + Request.Cookies[ProductItem]["ID"] + "'";
                }
                hasItem = true;
            }
        }
        where += ")"; // 完成WHERE子句
        // 更改資料來源控制項的SELECT指令
        if (hasItem)
            SqlDataSource1.SelectCommand += where;

        else
            SqlDataSource1.SelectCommand += "WHERE [商品編號] IN ('0000')";
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pos = 0;
        string Product_ID;
        if (e.CommandName == "DelItem")
        {
            pos = Convert.ToInt32(e.CommandArgument); // 哪一列圖書
            // 取得書號
            Product_ID = GridView1.DataKeys[pos].Value.ToString();
            // 刪除Cookie
            Response.Cookies[("CUST E-Commerce" + Product_ID).Trim()].Expires = DateTime.Today.AddDays(-365);
            Response.Redirect("ShoppingCart.aspx");
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int quantity;
        double subtotal, price;
        // 檢查是否是資料列
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // 指定數量
            Order_List += "\r\n";
            Order_List += " 商品名稱 " + e.Row.Cells[2].Text + " "; // Product Name
            Order_List += " 商品編號 " + e.Row.Cells[1].Text + " "; // Product Number
            Order_List += " 商品售價 " + e.Row.Cells[3].Text + " "; // Product price
                                                                //  Order_List += e.Row.Cells[4].Text + " "; // Product purchase amount
            
            e.Row.Cells[4].Text = Request.Cookies[("CUST E-Commerce" + e.Row.Cells[1].Text).Trim()]["Quantity"];
            price = Convert.ToDouble(e.Row.Cells[3].Text.Substring(3));
        
            quantity = Convert.ToInt32(e.Row.Cells[4].Text);
            Order_List += " 商品數量 " + quantity.ToString() + " \r\n"; // Product purchase amount
            subtotal = price * quantity;   // 小計
            total += subtotal;  // 計算總價
            e.Row.Cells[5].Text = subtotal.ToString("c");
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {

            e.Row.Cells[5].Text = total.ToString("c");
            Order_List += " \r\n 消費總金額 = " + total.ToString("c"); // total purchase price

            Response.Cookies["P_List"].Value = Server.UrlEncode(Order_List);
            DateTime dtDay = DateTime.Today.AddDays(10);
            Response.Cookies["P_List"].Expires = dtDay;

        }
    }


    protected void Button_送出訂單_Click(object sender, EventArgs e)

    {
        switch (RadioButtonList_付款方式.SelectedIndex)
        {
            case 0:
                {
                    Order_List += " 付款方式 : 貨到付款";
                    break;
                }
            case 1:
                {
                    Order_List += " 付款方式 : 信用卡支付";
                    break;
                }
            case 2:
                {
                    Order_List += " 付款方式 : 轉帳";
                    break;
                }
            case 3:
                {
                    Order_List += " 付款方式 : 支付寶";
                    break;
                }
            case 4:
                {
                    Order_List += " 付款方式 : 跨境通";
                    break;
                }
            default:
                {
                    break;
                }
        }
        switch (RadioButtonList_物流方式.SelectedIndex)
        {
            case 0:
                {
                    Order_List += " 物流方式 : 快遞";
                    break;
                }
            case 1:
                {
                    Order_List += " 物流方式 : 自行取貨";
                    break;
                }
            case 2:
                {
                    Order_List += " 物流方式 : 郵寄";
                    break;
                }
            case 3:
                {
                    Order_List += " 物流方式 : 超商取貨";
                    break;
                }
            case 4:
                {
                    Order_List += " 物流方式 : 臨櫃取貨";
                    break;
                }
            default:
                {
                    break;
                }
        }
        Response.Redirect("Order.aspx?User=" + Server.UrlDecode(Order_List));
    }



    protected void RadioButtonList_物流方式_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (RadioButtonList_物流方式.SelectedIndex)
        {
            case 0:
                TextBox_Message_Box.Text = " You Choose 快遞 !";
                break;
            case 1:
                TextBox_Message_Box.Text = " You Choose 自行取貨 !";
                break;
            case 2:
                TextBox_Message_Box.Text = " You Choose 郵寄!";
                break;
            case 3:
                TextBox_Message_Box.Text = " You Choose 7/11取貨 !";
                break;
            case 4:
                TextBox_Message_Box.Text = " You Choose 臨櫃取貨 !";
                break;
            default:
                break;
        }
    }

    protected void RadioButtonList_付款方式_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (RadioButtonList_付款方式.SelectedIndex)
        {
            case 0:
                TextBox_Message_Box.Text = " You Choose 貨到付款 !";
                break;
            case 1:
                TextBox_Message_Box.Text = " You Choose 信用卡支付 !";
                break;
            case 2:
                TextBox_Message_Box.Text = " You Choose 轉帳!";
                break;
            case 3:
                TextBox_Message_Box.Text = " You Choose 支付寶 !";
                break;
            case 4:
                TextBox_Message_Box.Text = " You Choose 跨境通 !";
                break;
            default:
                break;
        }
    }
}