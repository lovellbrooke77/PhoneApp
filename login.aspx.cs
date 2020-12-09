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
using System.Configuration;
using System.Web.DynamicData;
using System.Data.OleDb;


namespace PhoneDirectory
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtusername.Focus(); //blink cursor in TextBox1  

        }
        //void to access information to the database
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
            lblmessage.Text = "Username or Password is invalid.";


        }
    }
}
