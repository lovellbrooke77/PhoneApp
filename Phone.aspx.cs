using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace PhoneApp
{
    public partial class Phone : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                string Pname = string.Empty;
                string Ename = string.Empty;

                Pname = Request.QueryString["P_name"].ToString();
      

              if (Request.QueryString["Ename"] != null)
                {
                    Ename = Request.QueryString["Ename"].ToString();
                }
                else
                {
                    Ename = "";
                }
                BindData(Pname, Ename);
                }
            }
            protected void BindData(string Pname, string Ename)
            {
                string sql;
                OleDbConnection con = new OleDbConnection();
                // establish connection  
                con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
                con.Open(); // connection open  
                            // sql query  

                DataSet ds = new DataSet();

            sql = "SELECT * FROM [user],[phonenumber],[email],[department]" +
            "Where [PhoneNumber]='" + Pname +"'";
                if (Ename != "") { 
                    sql= sql + "' and [ExtensionNumber]='" + Ename + "'";
                 }


            OleDbCommand cmd = new OleDbCommand(sql, con);
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                da.Fill(ds);
                con.Close();

              
                PhoneSearch.DataSource = ds;
                PhoneSearch.DataBind();
                

            }

        protected void PhoneSearch_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            PhoneSearch.PageIndex = e.NewPageIndex;
            string Pname = string.Empty;
            string Ename = string.Empty;

            Pname = Request.QueryString["P_name"].ToString();
            Ename = Request.QueryString["E_name"].ToString();
            BindData(Ename, Pname);

        }
            
        }
    }