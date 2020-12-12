using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


namespace PhoneWebApplication
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();


            }
        }
        protected void BindData()
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            DataSet ds = new DataSet();


            sql = "SELECT phonenumber.PhoneNumber, phonenumber.ExtensionNumber,user.FirstName, user.LastName," +
               "department.DepartmentName, phonenumber.PhoneID, email.EmailAddress, department.FaxNumber FROM [phonenumber],[user],[email],[department]" +
              "WHERE [user].UserID = [phonenumber].UserID AND [user].UserID=[email].UserID AND [user].UserID = [department].UserID";
            
            

            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();

            NameSearch.DataSource = ds;

            NameSearch.DataBind();


        }


    }

}

