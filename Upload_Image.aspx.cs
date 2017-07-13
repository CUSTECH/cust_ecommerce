using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Upload_Image : System.Web.UI.Page
{
    protected void Page_PreRender(object sender, EventArgs e)
    {
        // 取得上傳圖檔目錄的實際路徑
        string uploadPath = Server.MapPath("~/images");
        // 建立DirectoryInfo物件
        DirectoryInfo dirInfo = new DirectoryInfo(uploadPath);
        // 使用簡單資料繫結
        DataList1.DataSource = dirInfo.GetFiles();
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "~/images/";
        if (UploadImage.HasFile) // 是否有選擇上傳圖檔
        {
            if (IsImageFile(UploadImage.FileName))
            {
                // 是圖檔
                path += UploadImage.FileName;
                UploadImage.SaveAs(Server.MapPath(path));
            }
        }
    }
    // 檢查檔案附檔名是否是圖檔
    bool IsImageFile(string fname)
    {
        // 取得副檔名
        string FileExt = Path.GetExtension(fname);
        switch (FileExt.ToLower())
        {
            case ".jpg": return true;
            case ".gif": return true;
            case ".png": return true;
            default: return false;
        }
    }
}