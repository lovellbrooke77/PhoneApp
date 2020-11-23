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
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Department_name = string.Empty;

                Department_name = Request.QueryString["Department_name"].ToString();


                BindData(Department_name);
            }
        }

        protected void BindData(string Department_name)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            DataSet ds = new DataSet();

            sql = "SELECT * FROM [user],[phonenumber],[email],[department]" +
                "where [DepartmentName] ='" + Department_name + "'";
               


            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();

            DepartmentSearch.DataSource = ds;

            DepartmentSearch.DataBind();

        }

        
        protected void DepartmentSearch_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DepartmentSearch.PageIndex = e.NewPageIndex;
            string Department_name = string.Empty;

            Department_name = Request.QueryString["Department_name"].ToString();
            BindData(Department_name);

        }
    }
    }