using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Windows.Forms;

namespace PhoneApp
{
    public partial class User : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fname = string.Empty;
                string lname = string.Empty;

                fname = Request.QueryString["f_name"].ToString();
                lname = Request.QueryString["l_name"].ToString();
                    BindData(fname, lname);
            }
        }
        protected void BindData(string fname, string lname) {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            DataSet ds = new DataSet();
            
            //sql = "select * from [user],[phonenumber],[email],[department]";
            sql = "select * from [user],[phonenumber],[email],[department]" +
                " where [FirstName]='"
             + fname + "' and [LastName]='" + lname + "'";
            



            OleDbCommand cmd = new OleDbCommand(sql, con);
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                
                NameSearch.DataSource = ds;

            NameSearch.DataBind();
            

            }
            
        protected void NameSearch_PageIndexChanging(object sender, GridViewPageEventArgs e)
              {
                    NameSearch.PageIndex = e.NewPageIndex;
            string fname = string.Empty;
            string lname = string.Empty;

            fname = Request.QueryString["f_name"].ToString();
            lname = Request.QueryString["l_name"].ToString();
            BindData(fname, lname);
        }
       

    }
    }
      



