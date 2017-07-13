using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.Data;
using System.Drawing;


public partial class Web_Maintenence : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    public string strDbCon;
    public OleDbConnection conn;

    protected void gvbind()
    {

        //  Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\myFolder\myAccessFile.accdb;
        //  Persist Security Info = False;
        // using (var conn = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = D:\\mydb.mdb")) for old version of access 2003 mdb file

        //  using (var conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\K-2016-11-23-01 (with new Maintenence Platform)\\RH-e-store\\App_Data\\whowhat.accdb"))
        // using (var conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\RH-e-store//app_Data\\whowhat.accdb"))
        conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb");
        conn.Open();
        OleDbCommand cmd = new OleDbCommand("Select * from 資料表1", conn);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            //  GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            //   GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }

        //using

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb");
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        conn.Open();
        // OleDbCommand cmd = con.CreateCommand();
        // OleDbCommand cmd = new OleDbCommand("delete FROM [資料表1] where id=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "", conn);

        // OleDbCommand cmd = new OleDbCommand("delete FROM [資料表1] where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        OleDbCommand cmd = new OleDbCommand("delete FROM [資料表1] where 識別碼=@識別碼", conn);
        cmd.Parameters.Add("@識別碼", OleDbType.Numeric).Value = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        cmd.ExecuteNonQuery();
        conn.Close();
        // gvbind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string StrDbCon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb";
        conn = new OleDbConnection(StrDbCon);
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblID = (Label)row.FindControl("lblID");
        string txt_識別碼 = row.Cells[0].Text;
        TextBox txt_主鍵 = (TextBox)row.Cells[1].Controls[0];
        TextBox txt_編號 = (TextBox)row.Cells[2].Controls[0];
        TextBox txt_商品廠商 = (TextBox)row.Cells[3].Controls[0];
        TextBox txt_商品類別 = (TextBox)row.Cells[4].Controls[0];
        TextBox txt_商品編號 = (TextBox)row.Cells[5].Controls[0];
        TextBox txt_類別主鍵 = (TextBox)row.Cells[6].Controls[0];
        TextBox txt_商品名稱 = (TextBox)row.Cells[7].Controls[0];
        TextBox txt_登錄日期 = (TextBox)row.Cells[8].Controls[0];
        TextBox txt_商品售價 = (TextBox)row.Cells[9].Controls[0];
        TextBox txt_商品折數 = (TextBox)row.Cells[10].Controls[0];
        TextBox txt_商品描述 = (TextBox)row.Cells[11].Controls[0];
        TextBox txt_是否刪除 = (TextBox)row.Cells[12].Controls[0];
        TextBox txt_最後更新時間 = (TextBox)row.Cells[13].Controls[0];
        TextBox txt_程式 = (TextBox)row.Cells[14].Controls[0];
        TextBox txt_商品成本價 = (TextBox)row.Cells[15].Controls[0];
        TextBox txt_商品單位 = (TextBox)row.Cells[16].Controls[0];
        TextBox txt_商品影像名稱 = (TextBox)row.Cells[17].Controls[0];
        TextBox txt_商品庫存量 = (TextBox)row.Cells[18].Controls[0];
        TextBox txt_商品安全庫存量 = (TextBox)row.Cells[19].Controls[0];
        TextBox txt_商品原價 = (TextBox)row.Cells[20].Controls[0];

        string S_商品廠商 = txt_商品廠商.Text;
        string S_商品類別 = txt_商品類別.Text;
        string S_商品編號 = txt_商品編號.Text;
        string S_商品名稱 = txt_商品名稱.Text;
        string S_登錄日期 = txt_登錄日期.Text;
        string S_商品描述 = txt_商品描述.Text;
        string S_是否刪除 = txt_是否刪除.Text;
        string S_最後更新時間 = txt_最後更新時間.Text;
        string S_程式 = txt_程式.Text;
        string S_商品單位 = txt_商品單位.Text;
        string S_商品影像名稱 = txt_商品影像名稱.Text;

        int int_商品原價 = Convert.ToInt32(txt_商品原價.Text);
        int int_識別碼 = Convert.ToInt32(txt_識別碼);
        int int_主鍵 = Convert.ToInt32(txt_主鍵.Text);
        int int_編號 = Convert.ToInt32(txt_編號.Text);
        int int_類別主鍵 = Convert.ToInt32(txt_類別主鍵.Text);
        int int_商品售價 = Convert.ToInt32(txt_商品售價.Text);
        int int_商品折數 = Convert.ToInt32(txt_商品折數.Text);
        int int_商品成本價 = Convert.ToInt32(txt_商品成本價.Text);
        int int_商品庫存量 = Convert.ToInt32(txt_商品庫存量.Text);
        int int_商品安全庫存量 = Convert.ToInt32(txt_商品安全庫存量.Text);
        //   GridView1.EditIndex = -1;
        conn.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM [資料表1]", conn);
        OleDbCommand cmd =
        new OleDbCommand("update 資料表1 SET 主鍵 = @主鍵, 編號 = @編號, 商品廠商 = @商品廠商" +
        ",商品類別 = @商品類別,商品編號 = @商品編,類別主鍵 = @類別主鍵,商品名稱 = @商品名稱 ,登錄日期 = @登錄日期" +
        ",商品售價 = @商品售價,商品折數 = @商品折數,商品描述 = @商品描述,是否刪除 = @是否刪除,最後更新時間 = @最後更新時間" +
        ",程式 = @程式,商品成本價 = @商品成本價,商品單位 = @商品單位,商品影像名稱 = @商品影像名稱,商品庫存量 = @商品庫存量,商品安全庫存量 = @商品安全庫存量,商品原價 = @商品原價" +
       " where (識別碼 = @識別碼)", conn);
        cmd.Parameters.Add("@識別碼", OleDbType.Numeric).Value = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        cmd.Parameters.Add("@主鍵", OleDbType.Numeric).Value = int_主鍵;
        cmd.Parameters.Add("@編號", OleDbType.Numeric).Value = int_編號;
        cmd.Parameters.Add("@商品廠商", OleDbType.WChar).Value = S_商品廠商;
        cmd.Parameters.Add("@商品類別", OleDbType.WChar).Value = S_商品類別;
        cmd.Parameters.Add("@商品編號", OleDbType.WChar).Value = S_商品編號;
        cmd.Parameters.Add("@類別主鍵", OleDbType.Numeric).Value = int_類別主鍵;
        cmd.Parameters.Add("@商品名稱", OleDbType.WChar).Value = S_商品名稱;
        cmd.Parameters.Add("@登錄日期", OleDbType.DBDate).Value = S_登錄日期;
        cmd.Parameters.Add("@商品售價", OleDbType.Numeric).Value = int_商品售價;
        cmd.Parameters.Add("@商品折數", OleDbType.Numeric).Value = int_商品折數;
        cmd.Parameters.Add("@商品描述", OleDbType.WChar).Value = S_商品描述;
        cmd.Parameters.Add("@是否刪除", OleDbType.WChar).Value = S_是否刪除;
        cmd.Parameters.Add("@最後更新時間", OleDbType.DBDate).Value = S_最後更新時間;
        cmd.Parameters.Add("@程式", OleDbType.WChar).Value = S_程式;
        cmd.Parameters.Add("@商品成本價", OleDbType.Numeric).Value = int_商品成本價;
        cmd.Parameters.Add("@商品單位", OleDbType.WChar).Value = S_商品單位;
        cmd.Parameters.Add("@商品影像名稱", OleDbType.WChar).Value = S_商品影像名稱;
        cmd.Parameters.Add("@商品庫存量", OleDbType.Numeric).Value = int_商品庫存量;
        cmd.Parameters.Add("@商品安全庫存量", OleDbType.Numeric).Value = int_商品安全庫存量;
        cmd.Parameters.Add("@商品原價", OleDbType.Numeric).Value = int_商品原價;
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();
        //GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }

    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        //   if (DetailsView1.Rows.Count == 0)
        //   {
        //       DetailsView1.ChangeMode(DetailsViewMode.Insert);
        //   }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        // if the user entered a studentid , we add "where" to the select query 
        //    if (TextBox1.Text != "")
        //    {
        // modify the command to add where 
        //         e.Command.CommandText += " WHERE ([商品編號] = @商品編號) ";
        //         OleDbParameter p = new OleDbParameter("@商品編號", TextBox1.Text.ToString());
        //         e.Command.Parameters.Add(p);
        //    }
    }
    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Context.GetOwinContext().Authentication.SignOut();
    }

    protected void InsertableGrid1_RowInserted(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            //Label3.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Table_Insert_Data.Visible = true;
        // DetailsView1.ChangeMode(DetailsViewMode.Insert); GridView1.EditIndex = e.NewEditIndex;
        //GridView1.EditIndex = -1;
        DetailsView1.ChangeMode(DetailsViewMode.Edit);

        //   string StrDbCon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb";
        //   conn = new OleDbConnection(StrDbCon);
        // int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        // GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        GridView1.FooterRow.Visible = true;

        gvbind();

        //      string txt_識別碼 = ((TextBox)GridView1.FooterRow.FindControl("識別碼")).Text;
        //       string txt_主鍵 = ((TextBox)GridView1.FooterRow.FindControl("主鍵")).Text;

        //  conn.Open();
        //      
        //       OleDbCommand cmd = new OleDbCommand("insert into  資料表1 (識別碼,主鍵)" +  " values(@識別碼, @主鍵)"); 
        //       cmd.Parameters.Add("@識別碼", OleDbType.Numeric).Value = Convert.ToInt32(txt_識別碼);
        //       cmd.Parameters.Add("@主鍵", OleDbType.Numeric).Value = Convert.ToInt32(txt_主鍵);
        //       conn.Close();
        //       GridView1.DataBind();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {



    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {





        //GridView1.DataBind();
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {

    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        Table_Insert_Data.Visible = true;
        //  DirectCast(DetailsView.FindControl("txtUserName"), TextBox).Text = GetUserName(CurrentUID())


        string StrDbCon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb";
        conn = new OleDbConnection(StrDbCon);
    }

    protected void Button_新增輸入資料進資料庫_Click(object sender, EventArgs e)
    {
        string StrDbCon = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb";
        conn = new OleDbConnection(StrDbCon);
        // public OleDbConnection My_conn = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\\inetpub\\wwwroot\\RH-e-store\\App_Data\\whowhat.accdb");
        string S_商品廠商 = TextBox_商品廠商.Text;
        string S_商品類別 = TextBox_商品類別.Text;
        string S_商品編號 = TextBox_商品編號.Text;
        string S_商品名稱 = TextBox_商品名稱.Text;
        string S_登錄日期 = TextBox_登錄日期.Text;
        string S_商品描述 = TextBox_商品描述.Text;
        string S_是否刪除 = TextBox_是否刪除.Text;
        string S_最後更新時間 = TextBox_最後更新時間.Text;
        string S_程式 = TextBox_程式.Text;
        string S_商品單位 = TextBox_商品單位.Text;
        string S_商品影像名稱 = TextBox_商品影像名稱.Text;
      
        int int_商品原價 = Convert.ToInt32(TextBox_商品原價.Text);
        int int_識別碼 = Convert.ToInt32(TextBox_識別碼.Text);
        int int_主鍵 = Convert.ToInt32(TextBox_主鍵.Text);
        int int_編號 = Convert.ToInt32(TextBox_編號.Text);
        int int_類別主鍵 = Convert.ToInt32(TextBox_類別主鍵.Text);
        int int_商品售價 = Convert.ToInt32(TextBox_商品售價.Text);
        int int_商品折數 = Convert.ToInt32(TextBox_商品折數.Text);
        int int_商品成本價 = Convert.ToInt32(TextBox_商品成本價.Text);
        int int_商品庫存量 = Convert.ToInt32(TextBox_商品庫存量.Text);
        int int_商品安全庫存量 = Convert.ToInt32(TextBox_商品安全庫存量.Text);
        //   GridView1.EditIndex = -1;

        conn.Open();
        //SqlCommand cmd = new SqlCommand("SELECT * FROM [資料表1]", conn);
        OleDbCommand cmd =
        new OleDbCommand("INSERT INTO 資料表1 (識別碼,主鍵 , 編號 , 商品廠商 ,商品類別 ,商品編號 ,類別主鍵 ,商品名稱 ,登錄日期" +
        ",商品售價 ,商品折數 ,商品描述 ,是否刪除 ,最後更新時間 ,程式,商品成本價 ,商品單位 ,商品影像名稱,商品庫存量" +
        " ,商品安全庫存量,商品原價) " + " VALUES (@識別碼,@主鍵,@編號,@商品廠商,@商品類別,@商品編號,@類別主鍵,@商品名稱,@登錄日期,@商品售價" +
        ",@商品折數,@商品描述,@是否刪除,@最後更新時間,@程式,@商品成本價,@商品單位,@商品影像名稱,@商品庫存量,@商品安全庫存量,@商品原價)", conn);

        cmd.Parameters.Add("@識別碼", OleDbType.Numeric).Value = int_識別碼;
        cmd.Parameters.Add("@主鍵", OleDbType.Numeric).Value = int_主鍵;
        cmd.Parameters.Add("@編號", OleDbType.Numeric).Value = int_編號;
        cmd.Parameters.Add("@商品廠商", OleDbType.WChar).Value = S_商品廠商;
        cmd.Parameters.Add("@商品類別", OleDbType.WChar).Value = S_商品類別;
        cmd.Parameters.Add("@商品編號", OleDbType.WChar).Value = S_商品編號;
        cmd.Parameters.Add("@類別主鍵", OleDbType.Numeric).Value = int_類別主鍵;
        cmd.Parameters.Add("@商品名稱", OleDbType.WChar).Value = S_商品名稱;
        cmd.Parameters.Add("@登錄日期", OleDbType.DBDate).Value = S_登錄日期;
        cmd.Parameters.Add("@商品售價", OleDbType.Numeric).Value = int_商品售價;
        cmd.Parameters.Add("@商品折數", OleDbType.Numeric).Value = int_商品折數;
        cmd.Parameters.Add("@商品描述", OleDbType.WChar).Value = S_商品描述;
        cmd.Parameters.Add("@是否刪除", OleDbType.WChar).Value = S_是否刪除;
        cmd.Parameters.Add("@最後更新時間", OleDbType.DBDate).Value = S_最後更新時間;
        cmd.Parameters.Add("@程式", OleDbType.WChar).Value = S_程式;
        cmd.Parameters.Add("@商品成本價", OleDbType.Numeric).Value = int_商品成本價;
        cmd.Parameters.Add("@商品單位", OleDbType.WChar).Value = S_商品單位;
        cmd.Parameters.Add("@商品影像名稱", OleDbType.WChar).Value = S_商品影像名稱;
        cmd.Parameters.Add("@商品庫存量", OleDbType.Numeric).Value = int_商品庫存量;
        cmd.Parameters.Add("@商品安全庫存量", OleDbType.Numeric).Value = int_商品安全庫存量;
        cmd.Parameters.Add("@商品原價", OleDbType.WChar).Value = int_商品原價;
        cmd.ExecuteNonQuery();
        conn.Close();
        gvbind();
    }
}