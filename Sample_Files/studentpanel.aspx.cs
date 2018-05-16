using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class studentpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "Welcome " + Session["id"].ToString() + " !";

            string oradb;
            oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
            OracleConnection conn = new OracleConnection(oradb);
                conn.Open();

                string query_1 = "select ID from student where name ='" + Session["id"].ToString()+ "'";
               // string query_2 = "select name from student where ID ='" + TextBox1.Text.Trim() + "'and name ='" + TextBox2.Text + "'";
                string query_3 = "select dept_name from student where name ='"+Session["id"].ToString()+"'";
                string query_4 = "select tot_cred from student where name ='" +Session["id"].ToString()+"'";

                OracleCommand cmd1 = new OracleCommand(query_1, conn);
             //   OracleCommand cmd2 = new OracleCommand(query_2, conn);
                OracleCommand cmd3 = new OracleCommand(query_3, conn);
                OracleCommand cmd4 = new OracleCommand(query_4, conn);
               // passwd = cmd1.ExecuteScalar().ToString();
                TextBox1.Text = cmd1.ExecuteScalar().ToString();
                TextBox2.Text = Session["id"].ToString();
                TextBox3.Text = cmd3.ExecuteScalar().ToString();
                TextBox4.Text = cmd4.ExecuteScalar().ToString();  
        }
        catch (Exception ex)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}