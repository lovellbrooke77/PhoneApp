using System;
using System.Data.OleDb;
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
            //string sql;
            //OleDbConnection con = new OleDbConnection();
            //// establish connection  
            //con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            //con.Open(); // connection open  
            //            // sql query  
            
            //sql = "select FirstName, LastName, StatusId from [user] where [FirstName]='" 
            //    + fname.Text + "' and [LastName]='" + lname.Text + "'";
            //OleDbCommand cmd = new OleDbCommand(sql, con);
            //cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            //OleDbDataReader reader;
            //reader = cmd.ExecuteReader();

            //while (reader.Read())
            //{
            //    if (reader.HasRows)
            //    {
                    //Response.Redirect("~/User.aspx?f_name="+fname.Text+"&l_name="+lname.Text);
                    Response.Redirect("~/Phonebook.aspx?btn=user&f_name=" +  fname.Text + "&l_name=" + lname.Text);
            //    }
            //    else
            //    {

            //        lblmessage1.Text = "First or Last Name not Found. Try again.";
            //        con.Close(); // connection close 
            //    }
            //}
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

                //"select PhoneNumber, ExtensionNumber from [phonenumber]";
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

                    //Response.Redirect("~/Phone.aspx?P_name=" + P_name+"& E_name = "+E_name);
                    Response.Redirect("~/Phonebook.aspx?btn=phone&P_name=" + P_name + "&E_name=" + E_name);
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

                    //Response.Redirect("~/Fax.aspx?F_name=" + F_name);
                    Response.Redirect("~/Phonebook.aspx?btn=fax&F_name=" + F_name);
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

                    //Response.Redirect("~/Department.aspx?Department_name=" +Department_name); 
                    Response.Redirect("~/Phonebook.aspx?btn=department&Department_name=" + Department_name);
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

