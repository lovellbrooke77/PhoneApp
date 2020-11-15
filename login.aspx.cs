using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.sun.xml.@internal.bind.v2.runtime.reflect.opt;
using System.Configuration;
using Google.Apis.Admin.Directory.directory_v1.Data;
using System.Web.DynamicData;
using System.Data.OleDb;


namespace PhoneApp
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtusername.Focus(); //blink cursor in TextBox1  
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql; int row;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  
            sql = "select count(*) from [user] where [Username]='" + txtusername.Text + 
                "' and [Password]='" + txtPassword.Text + "'and [StatusId]=1";
            
            OleDbCommand cmd = new OleDbCommand(sql, con);
            row = (int)cmd.ExecuteScalar(); // cast into integer and ExecuteScalar() get single value from database.   
           
            if (row > 0)
                Response.Redirect("~/Search.aspx");
            else
                    con.Close(); // connection close  
                lblmessage.Text = "Username or Password is invalid...";
        }


    }
}

//}
//  protected void btnLogin_Click(object sender, EventArgs e)
//        {
//            //string test = string.Empty;

//            try
//            {
//                DataSet ds = new DataSet();
//                //con= "
//                //   
//                //    con = new OdbcConnection(con);
//                //@"Provider= Microsoft.Jet.OLEDB.4.0; " +
//                //  "Data Source=C:\\Users\\Brooke\\Documents\\repos\\PhoneApp\\PhoneApp\\App_Data\\Phonebook.mdb; "
//                string connectionstring = null;
//                OleDbConnection con;
//                connectionstring = 
//                  @"Provider = Microsoft.ACE.OLEDB.12.0; "+ "Data Source=" + Server.MapPath("Database/Phonebook.mdb");
//                    con = new OleDbConnection(connectionstring);
//                string query = "select * from user Where [Username]='"+ txtusername.Text + 
//                "' and [Password]='" + txtPassword.Text + 
//                "' and [StatusId]=1;";
//                OleDbCommand myCommand = new OleDbCommand("select * from [user].[mdb] where [username] = @username " +
//                    "and [password] = @password", con); 
//                    myCommand.Parameters.AddWithValue( "@username", txtusername );
//                    myCommand.Parameters.AddWithValue( "@password", txtPassword );
//                con.Open();
//                    OleDbDataAdapter da = new OleDbDataAdapter(myCommand);
//                da.Fill(ds);
//                con.Close();
//                    if (ds.Tables[0].Rows.Count > 0)
//                    {
//                        Session["LoginCount"] = 0;
//                        Response.Redirect("~/Home.aspx");
//                    }
//                    else
//                    {
//                        Session["LoginCount"] = Convert.ToInt32(Session["LoginCount"]) + 1;
//                        if (Convert.ToInt32(Session["LoginCount"]) > 3)
//                        {
//                            lblmessage.Text = DeactivateLoginAccount();
//                        }
//                        else
//                        { 
//                        //con.Close();
//                            lblmessage.Text = "Please enter a valid login detail.";
//                        }
//                    }
//            }
//            catch (Exception ex)
//            {
//                throw;
//            }
           
//        }
//        private string DeactivateLoginAccount()
//        {
//            DataSet ds = new DataSet();
//            string connectionstring = null;
//            OleDbConnection con;
//            connectionstring = @"Provider = Microsoft.ACE.OLEDB.12.0;
//Data Source=C:\\Users\\Brooke\\Documents\\repos\\PhoneApp\\PhoneApp\\App_Data\\Phonebook1.accdb; Persist Security Info = SSPI;";
//            con = new OleDbConnection(connectionstring);
//            string query = "select * from user Where [Username]='" + txtusername.Text +
//            "' and [Password]='" + txtPassword.Text +
//            "' and [StatusId]=1;";
//            con.Open();
//            OleDbDataAdapter da = new OleDbDataAdapter(query, con);
//            da.Fill(ds);
//            if (ds.Tables[0].Rows.Count > 0)
//            {
//                return "Your Account is Locaked. Please contact to admin.";
//            }
//            else
//            {
//                con.Close();
//                return "Please enter a valid login detail.";
//            }

//        }
//        private string DeactivateLoginAccoint()
//        {
//            DataSet ds = new DataSet();
//            string connectionstring = null;
//            OleDbConnection con;
//            connectionstring = @"Provider = Microsoft.ACE.OLEDB.12.0;
//Data Source=C:\\Users\\Brooke\\Documents\\repos\\PhoneApp\\PhoneApp\\App_Data\\Phonebook1.accdb; Persist Security Info = SSPI;";
//            con = new OleDbConnection(connectionstring);
//            string query = "select * from user Where [Username]='" + txtusername.Text +
//            "' and [Password]='" + txtPassword.Text +
//            "' and [StatusId]=1;";
//            con.Open();
//            OleDbDataAdapter da = new OleDbDataAdapter(query, con);
//            da.Fill(ds);
//            if (ds.Tables[0].Rows.Count > 0)
//            {
//                return "Your Account is Locaked. Please contact to admin.";
//            }
//            else
//            {
//                con.Close();
//                return "Enter user id does not belong to application.";
//            }

//        }
//    }