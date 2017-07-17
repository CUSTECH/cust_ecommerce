using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Order : System.Web.UI.Page
{
    string Purchase_List1 = "";
    string Payment_Shipping_Payment_Method = "";
    string Customer_Phone_Number = "";
    string Customer_Shipping_Address = "";
    string Decoded_Purchase_List1 = "";
    string Temp_Order_Number = "";
    string Order_Number = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["P_List"] != null)
        {
           Purchase_List1 =  Request.Cookies["P_List"].Value;
           Payment_Shipping_Payment_Method = Request.QueryString["User"];
        }
       // Purchase_List2 = Server.UrlDecode(Request.QueryString["Purchase_List"]);
    }
    public string strDbCon;
    public OleDbConnection conn;

    private string Generate_Order_String()
    {
        var chars = "0123456789";
        var stringChars = new char[8];
        var random = new Random();

        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }
        var finalString = new String(stringChars);
        return finalString;
    }


protected void Update_Order_DataBase()
    {
        string StrDbCon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\cust_ecommerce\\App_Data\\WhoWhat.accdb";
        conn = new OleDbConnection(StrDbCon);
        // public OleDbConnection My_conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\cust_ecommerce\\App_Data\\whowhat.accdb");
        //string S_訂單編號 = Order_Number;
        string S_訂購者 = "訂購者";
        string S_訂單內容 = Decoded_Purchase_List1.Replace("\r","");
        S_訂單內容 = Decoded_Purchase_List1.Replace("\n", "");
        S_訂單內容 = Decoded_Purchase_List1.Replace("CUST E-Commerce", "");
        string S_訂購日期 = DateTime.Now.ToString();
        string S_訂單狀態 = "訂單收到";
        string S_訂單編號 = Order_Number;
        conn.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM [資料表1]", conn);
        OleDbCommand cmd =
        new OleDbCommand("INSERT INTO 資料表_Order (訂單編號,訂購者 , 訂單內容 ,訂購日期 ,訂單狀態) " + " VALUES (@訂單編號,@訂購者,@訂單內容,@訂購日期 ,@訂單狀態)", conn);


        cmd.Parameters.Add("@訂單編號", OleDbType.WChar).Value = S_訂單編號;
        cmd.Parameters.Add("@訂購者", OleDbType.WChar).Value = S_訂購者;
        //cmd.Parameters.Add("@訂單內容", OleDbType.LongVarWChar,255).Value = Server.UrlDecode(Purchase_List1).ToString();
        cmd.Parameters.Add("@訂單內容", OleDbType.LongVarWChar, 255).Value = S_訂單內容;
        cmd.Parameters.Add("@訂購日期", OleDbType.DBDate).Value = S_訂購日期;
        cmd.Parameters.Add("@訂單狀態", OleDbType.WChar).Value = S_訂單狀態;
        cmd.Parameters.Add("@訂單編號", OleDbType.WChar).Value = S_訂單編號;

        cmd.ExecuteNonQuery();
        conn.Close();
    }
protected void Button_確認訂單_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["P_List"] != null)
        {
            Purchase_List1 = Request.Cookies["P_List"].Value;
            Payment_Shipping_Payment_Method = Request.QueryString["User"];
        }
        // string Purchase_List2 = Server.UrlDecode(Request.QueryString["Purchase_List"]); 
        // Purchase_List3 = Server.UrlDecode(Request.QueryString["Purchase_List"]);


        // TextBox Previous_Textbox = new TextBox();
        //    Previous_Textbox = (TextBox)PreviousPage.FindControl("TextBox_Pruchase_List");
        //    string Purchase_List3 = Previous_Textbox.Text;
        Customer_Phone_Number = TextBox4.Text.ToString();
        Customer_Shipping_Address = TextBox2.Text.ToString();
        MailMessage msg = new MailMessage();
        msg.SubjectEncoding = System.Text.Encoding.UTF8;
        msg.BodyEncoding = System.Text.Encoding.UTF8;//郵件內容編碼 
        // send order to shipping department
        msg.From = new MailAddress(TextBox3.Text.ToString(), "確認訂單", System.Text.Encoding.UTF8);
        msg.To.Add("kentsun0401@gmail.com");
        msg.Subject = "確認訂單 : " + TextBox1.Text.ToString();
        Decoded_Purchase_List1 = Server.UrlDecode(Purchase_List1);
        Decoded_Purchase_List1 += Payment_Shipping_Payment_Method;
        Decoded_Purchase_List1 += " 購買者電話號碼 : " + Customer_Phone_Number;
        Decoded_Purchase_List1 += " 購買者地址 : " + Customer_Shipping_Address;
        Temp_Order_Number = DateTime.Now.ToString();
        Temp_Order_Number = Temp_Order_Number.Replace(":", "");
        Order_Number = "Order_" + Generate_Order_String();
        Decoded_Purchase_List1 += " 訂單編號 " + Order_Number;
        msg.Body = Decoded_Purchase_List1;
        //  msg.IsBodyHtml = true;     
        msg.Priority = MailPriority.Normal;//郵件優先級 
        SmtpClient MySmtp = new SmtpClient("smtp.gmail.com", 587);
        //設定你的帳號密碼
        MySmtp.Credentials = new System.Net.NetworkCredential("kentsun0401@gmail.com", "******");
        //Gmial 的 smtp 使用 SSL
        MySmtp.EnableSsl = true;
        MySmtp.Send(msg);

        //send order message to buyer
        msg.From = new MailAddress("kentsun0401@gmail.com", "確認訂單", System.Text.Encoding.UTF8);
        msg.To.Add(TextBox3.Text.ToString());
        msg.Subject = "確認訂單 : " + TextBox1.Text;

        msg.Body = Decoded_Purchase_List1;
        //  msg.IsBodyHtml = true;     
        msg.Priority = MailPriority.Normal;//郵件優先級 
        //設定你的帳號密碼
        MySmtp.Credentials = new System.Net.NetworkCredential("kentsun0401@gmail.com", "*******");
        //Gmial 的 smtp 使用 SSL

        MySmtp.Send(msg);
        MySmtp.Dispose();
        Update_Order_DataBase();

        Response.Redirect("Default.aspx");


    } 
}
