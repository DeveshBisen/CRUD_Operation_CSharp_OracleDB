using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string oradb,passwd;
        oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
        OracleConnection conn = new OracleConnection(oradb);
        try
        {
            conn.Open();
            string query_1;
            if (TextBox2.Text == "admin") {
                query_1 = "select password from adminlogin where name ='" + TextBox1.Text.Trim() + "'";
            }
            else {
                query_1 = "select id from student where name ='" + TextBox1.Text.Trim() + "'";
            }
            OracleCommand cmd1 = new OracleCommand(query_1, conn);
             passwd= cmd1.ExecuteScalar().ToString();
             if (passwd == TextBox3.Text)
             {
                 if (TextBox2.Text == "admin")
                 {
                     Session["id"] = TextBox1.Text;
                     Response.Redirect("adminpanel.aspx");
                     Session.RemoveAll();
                 }
                 else{  
                     Session["id"] = TextBox1.Text;
                     Response.Redirect("studentpanel.aspx");
                     Session.RemoveAll();
                 }
             }
             else
             {
                 TextBox4.Text = "Invalid Username or Password !";
             }


        }
        catch (Exception ex)
        {
            string t = "Invalid Username or Password !";
            TextBox4.Text = t;
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}