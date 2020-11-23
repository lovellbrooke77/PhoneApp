using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


namespace PhoneApp
{
    public partial class Phonebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fname = string.Empty;
                string lname = string.Empty;
                string E_name = string.Empty;
                string P_name = string.Empty;
                string F_name = string.Empty;
                string Department_name = string.Empty;


                string btn = string.Empty;

                btn = Request.QueryString["btn"].ToString();

                if (btn == "user")
                {
                    fname = Request.QueryString["f_name"].ToString();

                    lname = Request.QueryString["l_name"].ToString();

                    BindData(btn, fname, lname);
                }

                if (btn == "phone")
                {
                    P_name = Request.QueryString["P_name"].ToString();

                    E_name = Request.QueryString["E_name"].ToString();

                    BindData(btn, P_name, E_name);
                }

                if (btn == "fax")
                {
                    F_name = Request.QueryString["F_name"].ToString();


                    BindData(btn, F_name, string.Empty);
                }
                
                if (btn == "department")
                {
                    Department_name = Request.QueryString["Department_name"].ToString();


                    BindData(btn, Department_name, string.Empty);
                }


            }
        }
        protected void BindData(string btn, string prm1, string prm2)
        {
            string sql;
            OleDbConnection con = new OleDbConnection();
            // establish connection  
            con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("Phonebook.mdb");
            con.Open(); // connection open  
                        // sql query  

            DataSet ds = new DataSet();

            //sql = "select * from [user],[phonenumber],[email],[department]";
            sql = "select * from [user],[phonenumber],[email],[department]";
            sql = sql + " where [user].UserID = [phonenumber].UserID AND [user].UserID = [email].UserID" +
                " AND [user].UserID = [department].UserID ";
                
            if (btn == "user")
            {
                if (prm1 != "" && prm2 == "")
                {
                    sql = sql + " AND [FirstName]='"
               + prm1 + "' ";
               }
                else if (prm1 == "" && prm2 !="")
                { 

                    sql = sql + " and [LastName]='" + prm2 + "'";
                }
                else
                {
                    sql = sql + " AND [FirstName]='"
              + prm1 + "' and [LastName]='" + prm2 + "'";
                }
            }
            if (btn == "phone")
            {
                sql = sql + " AND [PhoneNumber]='"
             + prm1 + "' and [ExtensionNumber]='" + prm2 + "'";

            }
            if (btn == "fax")
            {
                sql = sql + " AND [FaxNumber]='"
             + prm1 + "'";

            }
            if (btn == "department")
            {
                sql = sql + " AND [DepartmentName]='"
             + prm1 + "'";

            }



            OleDbCommand cmd = new OleDbCommand(sql, con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            con.Close();

            NameSearch.DataSource = ds;

            NameSearch.DataBind();


        }


    }

}

        //private void Phone_Load(object sender, EventArgs e)
        //{

        //    //hiding data grid view coloumn
        //    NameSearch.AutoGenerateColumns = true;
        //    NameSearch.DataSource = ;
        //    NameSearch.DataMember = "users"; //  users is table name
        //    NameSearch.Columns[0].Visible = false;//hiding 1st column
        //    NameSearch.Columns[2].Visible = false; //hiding 2nd column
        //    //end of hiding datagrid view coloumns

        //}
        //protected void NameSearch_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //     e.Row.Cells[0].Visible = false;
        //}

