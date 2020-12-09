using System;
using System.Data.OleDb;

namespace PhoneDirectory
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
        
        }
            protected void btnUser_Click(object sender, EventArgs e)
            {
            
                    Response.Redirect("~/Phonebook.aspx?btn=user&f_name=" + TextBox_fname.Text + "&l_name=" + lname.Text);
         
        }
        protected void PhoExtbtn_Click(object sender, EventArgs e)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "SELECT phonenumber.PhoneNumber, phonenumber.ExtensionNumber,user.FirstName, user.LastName," +
                "department.DepartmentID, phonenumber.PhoneID, email.EmailID FROM [phonenumber],[user],[email],[department]" +
                "WHERE [user].UserID = [phonenumber].UserID AND [user].UserID= [email].UserID AND [user].UserID = [department].UserID";

                
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

                    
                    Response.Redirect("~/Phonebook.aspx?btn=phone&P_name=" + P_name + "&E_name=" + E_name);
                }
                else
                {
                    con.Close(); // connection close  
                    //if a phone number or extension number is not in the database it will make the user try again
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

                    
                    Response.Redirect("~/Phonebook.aspx?btn=fax&F_name=" + F_name);
                }
                else
                {
                    con.Close(); // connection close  
                    // if a fax number is not in the database it will make the user try again
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

                    
                    Response.Redirect("~/Phonebook.aspx?btn=department&Department_name=" + Department_name);
                }
                else
                {
                    con.Close(); // connection close  
                    //if a department is not in the database it will make the user try again
                    lblmessage4.Text = "Department not Found. Try again.";
                }
            }
        }

    }
}

