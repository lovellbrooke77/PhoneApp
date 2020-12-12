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
            string f_name = string.Empty;
            string l_name = string.Empty;

            f_name = fname.Text;
            l_name = lname.Text;

            if(f_name == "" && l_name == "")
            {
                lblmessage1.Text = "First and last name can not be blank.";

                return;
            }

            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "SELECT user.FirstName, user.LastName " +
                " FROM [user] " +
                "WHERE user.FirstName = '" + f_name + "' or user.LastName  = '" + l_name + "'";


            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {

                con.Close(); // connection close
                
                Response.Redirect("~/Pages/Phonebook.aspx?btn=user&f_name=" +  fname.Text + "&l_name=" + lname.Text); 

            }
            else
            {
                con.Close(); // connection close  

                lblmessage1.Text = "Name not Found. Try again.";

                lname.Text = "";
                fname.Text = "";


            }

        }
        protected void PhoExtbtn_Click(object sender, EventArgs e)
        {
            string E_name = string.Empty;
            string P_name = string.Empty;

            E_name = ExtNumber.Text;
            P_name = PhoneNum.Text;

            if (P_name == "" || E_name == "")
            {
                lblmessage2.Text = "Both phone number and Extension number are required. Try again.";

                return;
            }

            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "SELECT phonenumber.PhoneNumber" +
                " FROM [phonenumber] " +
                "WHERE phonenumber.PhoneNumber = '" + PhoneNum.Text + "' and phonenumber.ExtensionNumber = '" + ExtNumber.Text + "'";

               
            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader; 
            reader = cmd.ExecuteReader();

             if (reader.HasRows)
                {
               
                    con.Close(); // connection close 

                    Response.Redirect("~/Pages/Phonebook.aspx?btn=phone&P_name=" + P_name + "&E_name=" + E_name);
                
               
            } else
                {
                    con.Close(); // connection close  
                    lblmessage2.Text = "Phone number or extension number not Found. Try again.";
                    return;
                }


        }
        protected void Faxbtn_Click(object sender, EventArgs e)
        {
            string fax = string.Empty;

            fax = FaxNum.Text;

            if (fax == "")
            {
                lblmessage3.Text = "Fax number cannot be blank. Try again.";

                return;

            }
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            sql = "select FaxNumber from [department] Where FaxNumber = '" + fax + "'" ;

            OleDbCommand cmd = new OleDbCommand(sql, con);
            cmd.ExecuteScalar();// cast into integer and ExecuteScalar() get single value from database.   
            OleDbDataReader reader;
            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                    
                Response.Redirect("~/Pages/Phonebook.aspx?btn=fax&F_name=" + fax);
            }
            else
            {
                con.Close(); // connection close
                
                lblmessage3.Text = "Fax number not Found. Try again.";

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

                   
                    Response.Redirect("~/Pages/Phonebook.aspx?btn=department&Department_name=" + Department_name);
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

