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
using System.Web.UI.HtmlControls;
namespace PhoneApp
{
    public partial class Home : System.Web.UI.Page
    {
        private string myfname;
        public string propfname
        {
            get { return myfname; }
            set { myfname = value; }
        }
        private string mylname;

        public string proplname
        {
            get { return mylname; }
            set { mylname = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
          //  if (!IsPostBack)
               // fname.Focus();
        }
            protected void btnUser_Click(object sender, EventArgs e)
            {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  
            
            sql = "select FirstName, LastName, StatusId from [user] where [FirstName]='" 
                + fname.Text + "' and [LastName]='" + lname.Text + "'";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader.HasRows)
                {
                    Response.Redirect("~/User.aspx?f_name="+fname.Text+"&l_name="+lname.Text);
                }
                else
                {

                    lblmessage1.Text = "First or Last Name not Found. Try again.";
                    con.Close(); // connection close 
                }
            }
        }
        protected void PhoExtbtn_Click(object sender, EventArgs e)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "select PhoneNumber, ExtensionNumber from [phonenumber]";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader.HasRows)
                {
                    string E_name = string.Empty;
                    string P_name = string.Empty;

                    E_name = ExtNumber.Text;
                    P_name = PhoneNum.Text;

                    Response.Redirect("~/Phone.aspx?P_name=" + P_name+"& E_name = "+E_name);
                }
                else
                {
                    con.Close(); // connection close  
                    lblmessage2.Text = "Phone number or Extension number not Found. Try again.";
                }
            }
        }
        protected void Faxbtn_Click(object sender, EventArgs e)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "select FaxNumber from [department]";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader.HasRows)
                {
                    string F_name = string.Empty;
                    
                    F_name = FaxNum.Text;
                    
                    Response.Redirect("~/Fax.aspx?F_name=" + F_name);
                }
                else
                {
                    con.Close(); // connection close  
                    lblmessage3.Text = "Fax number not Found. Try again.";
                }
            }
        }
        protected void Departmentbtn_Click(object sender, EventArgs e)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "select DepartmentName from [department]";
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader.HasRows)
                {
                    string Department_name = string.Empty;

                    Department_name = DD_Department.SelectedValue;

                    Response.Redirect("~/Department.aspx?Department_name=" +Department_name);
                }
                else
                {
                    con.Close(); // connection close  
                    lblmessage4.Text = "Department not Found. Try again.";
                }
            }
        }

    }
}

