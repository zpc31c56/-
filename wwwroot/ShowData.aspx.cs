using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//開啓ADO資料庫語法
using System.Data;
using System.Data.SqlClient;
//其它常用元件
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;


public partial class ShowData : System.Web.UI.Page
{
    


     protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("帳號：" + Request.QueryString["ID"] + "<BR/>");
        Response.Write("密碼：" + Request.QueryString["Password"] + "<BR/>");
        Response.Write("身份別：" + Request.QueryString["Msg"] + "<BR/>");
    }
}
