using System;
using System.Data.SqlClient;
using System.Data;
using System.Data.Odbc;

public partial class preview_dotnet_templates_registration_Form_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        OdbcConnection conn;
        OdbcDataAdapter ap;
     
        OdbcCommand cmd = new OdbcCommand();
       
        
        DataSet ds = new DataSet();
        string constr = "FIL=MS Access;SERVER=localhost;DSN=Pform;UID=root;PWD=;OPTION=3";
        conn = new OdbcConnection(constr);
        conn.Open();
       


        try
        {

            string selectCommand =
     "SELECT * FROM accountID where Name= '"+ TextBox1.Text +"'";

            OdbcDataAdapter adapter = new OdbcDataAdapter(
                selectCommand, conn);
            adapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;


            conn = new OdbcConnection(constr);
            conn.Open();



            string sql2 = "UPDATE accountID SET  Name = '" + TextBox1.Text + "',Pass='" + TextBox2.Text + "',Email='" + TextBox4.Text + "',Address= '" + TextBox3.Text + "' +WHERE  Name = '" + TextBox1.Text + "'";
                ap = new OdbcDataAdapter(sql2, conn);
               
                
                cmd.ExecuteNonQuery();


            
            
            Response.Write("ID=" + TextBox1.Text + "&Password=" + TextBox2.Text );

            

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
    
