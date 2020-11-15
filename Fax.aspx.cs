using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Windows.Forms;

namespace PhoneApp
{
    public partial class Fax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Fname = string.Empty;
                
                if (Request.QueryString["F_name"] != null)
                {
                    Fname = Request.QueryString["F_name"].ToString();
                }
                else
                {
                    Fname = "";
                }
                BindData(Fname);
            }
            
        }
        protected void BindData(string Fname)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            DataSet ds = new DataSet();

            sql = "SELECT * FROM [user],[phonenumber],[email],[department]" +
                "Where [FaxNumber]='"+ Fname+ "'";

            

            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();

            
            FaxSearch.DataSource = ds;
         
            FaxSearch.DataBind();
          

        }

        protected void FaxSearch_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            FaxSearch.PageIndex = e.NewPageIndex;
            string Fname = string.Empty;
            
            Fname = Request.QueryString["F_name"].ToString();
          
            BindData(Fname);

        }
     
    }
    }
