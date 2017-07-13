using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static string[] User_OnLine_Database = new string[100];
    public static uint User_Index = 0;
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
        if (Session["Username"] == null)
        {
            Panel1.Visible = true; // 顯示登入表單
            Panel2.Visible = false; // 隱藏訊息表單
        }
        else
        {
            Panel1.Visible = false; // 隱藏登入表單
            Panel2.Visible = true; // 顯示訊息表單
        }
        ShowMessage();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        ShowMessage();
    }
    // 更新聊天訊息
    public void UpdateMessage(string msg)
    {
        string newMsg = "<b>" + Session["Username"] +
                       "</b>(" + DateTime.Now + "):";
        Application.Lock();
        // 更新聊天訊息 
        Application["Msg1"] = Application["Msg2"];
        Application["Msg2"] = Application["Msg3"];
        Application["Msg3"] = Application["Msg4"];
        Application["Msg4"] = Application["Msg5"];
        Application["Msg5"] = Application["Msg6"];
        Application["Msg6"] = Application["Msg7"];
        Application["Msg7"] = Application["Msg8"];
        Application["Msg8"] = Application["Msg9"];
        Application["Msg9"] = newMsg + msg;
        Application.UnLock();
    }
    // 顯示聊天訊息
    public void ShowMessage()
    {


        lblOutput.Text = "";
        if (Session["Username"] != null && Application != null)
        {
            for (int i = 1; i <= 9; i++)
            {
                //第i筆訊息不為空白時
                if (Application["Msg" + i] != null)
                    //若訊息內容包含登入者名稱，同時包含「Admin」時，顯示該筆訊息
                    if (Application["Msg" + i].ToString().IndexOf(Session["Username"].ToString()) > -1 &&
                        Application["Msg" + i].ToString().IndexOf("Admin") > -1)
                    {

                        lblOutput.Text += Application["Msg" + i.ToString()] + "<br/>";

                    }
            }
        }


    }

    protected void Button_登入_Click(object sender, EventArgs e)
    {
        //TextBox_User.Text = Session["Username"].ToString();
        string username = txtUsername.Text;
        if (username != "")
        {
            // 有輸入使用者  
            if (Session["Username"] == null)
            {   // 取得使用者名稱 
                Session["Username"] = username;
                lblPrompt.Text = username + ": ";
                User_OnLine_Database[User_Index] = username;

                // TextBox_User.Text = User_OnLine_Database[User_Index].ToString();
                User_Index++;
                Panel1.Visible = false; // 隱藏登入表單
                Panel2.Visible = true; // 顯示訊息表單
            }
        }

    }
    string msg = "";
    protected void Button_送出訊息_Click(object sender, EventArgs e)
    {
        if (Session["Username"].ToString() != "Admin")
            msg = Session["Username"] + " To Admin: " + txtMsg.Text;
        else
            msg = Session["Username"].ToString() + " : " + txtMsg.Text;
        if (msg != "")
        {   // 有聊天訊息  
            UpdateMessage(msg);
            ShowMessage();
        }
    }

    protected void Button_結束線上服務_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
        //Session.Abandon();
    }
}