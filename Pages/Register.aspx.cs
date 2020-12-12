using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace PhoneApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbutton_Click(object sender, EventArgs e)
        {
            if (txtconfirmpassword.Text != string.Empty || Registerpass.Text != string.Empty || registeruser.Text != string.Empty)
            {
                if (Registerpass.Text == txtconfirmpassword.Text)
                {
                    string sql;
                    string maxvalue = string.Empty;
                    sql = "select MAX(UserID) as a from [user]";

                    OleDbConnection con = new OleDbConnection();
                    // establish connection  
                    con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
                    con.Open(); // connection open  
                                // sql query  

                    OleDbCommand cmd = new OleDbCommand(sql, con);
                    OleDbDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        maxvalue = dr["a"].ToString();
                        maxvalue = Convert.ToString(Convert.ToInt32(maxvalue) + 1);

                    }
                    cmd = new OleDbCommand("insert into [user] ([UserID],[Username],[Password],[FirstName],[LastName]) values (" + maxvalue + ",'" + registeruser.Text + "','" + Registerpass.Text + "','" + fname.Text + "','" + lname.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    lblmessage1.Text = "User Created";

                    con.Close(); // connection close  
                                 //if a phone number or extension number is not in the database it will make the user try again
                    lblmessage2.Text = "User Already exist please try another";

                }
            }
        }
    }
}