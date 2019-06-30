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

public partial class preview_dotnet_templates_registration_Form_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
                   

         //System.Data.Odbc.OdbcConnection conn = new System.Data.Odbc.OdbcConnection ();
         System.Data.Odbc.OdbcConnection conn; 
         System.Data.Odbc.OdbcDataAdapter ap;
        System.Data.Odbc.OdbcDataReader apcheck;
        System.Data.Odbc.OdbcCommand objcommand;
        objcommand = new System.Data.Odbc.OdbcCommand();
        DataSet ds = new DataSet();
        //string connectionString = "Data Source=(local);Initial Catalog=Northwind; User ID=Admin; Password=misdyu";            
         string constr = "FIL=MS Access;SERVER=localhost;DSN=Pform;UID=root;PWD=;OPTION=3";       
         conn = new System.Data.Odbc.OdbcConnection(constr);
          conn.Open();

        //採用ODBC，則禁止使用sqlcommand相關指令，會出現語法錯誤，一直抓不到bug
        objcommand.Connection = conn;
        objcommand.CommandText = "Select * From accountID Where Name = '" + TextBox1.Text + "'";
        
        try
       {

            // Process data here.
            apcheck = objcommand.ExecuteReader();

            if (apcheck.HasRows)
            {
                Label1.Text = "帳號：該帳戶己註冊過";
               apcheck.Close();
                conn.Close();
            }
            else {
                conn.Close();
                conn = new System.Data.Odbc.OdbcConnection(constr);
                conn.Open();
                string sql1 = "Insert into accountID (Name, Pass, Email, Address, Gender, Idt) values ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox4.Text + "' , '" + TextBox3.Text + "' , '" + RadioButtonList1.Text + "', '" + DropDownList1.Text + "')";
                ap = new System.Data.Odbc.OdbcDataAdapter(sql1, conn);
                ap.Fill(ds);

                //傳統寫法
                Response.Redirect("ShowData.aspx?ID=" + TextBox1.Text + "&Password=" + TextBox2.Text + "&Msg=" + DropDownList1.Text);
                //使用字串參數的型式,ERROR會出現兩次註冊
                //Response.Redirect(string.Format("ShowData.aspx?ID={0}&Password={1}&Msg={2}", TextBox1.Text, TextBox2.Text, DropDownList1.Text));
                
            }  
        }
       catch (Exception ex)
        {
            //新版不支援下行
            // MessageBox.Show(ex.Message);   
        }
        finally
        {
            
            conn.Close();
          }



    }
}