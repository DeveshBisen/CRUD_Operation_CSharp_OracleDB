using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "Welcome " + Session["id"].ToString() + " !";
        }
        catch (Exception ex)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            string oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
            string commandText = "insert into student (ID,NAME,DEPT_NAME,TOT_CRED) values(:S_ID, :S_NAME, :S_DEPT, :S_CRED)";
            using (OracleConnection connection = new OracleConnection(oradb))
            using (OracleCommand command = new OracleCommand(commandText, connection))
            {

                command.Parameters.Add(new OracleParameter("S_ID", TextBox1.Text.ToString()));
                command.Parameters.Add(new OracleParameter("S_NAME", TextBox2.Text.ToString()));
                command.Parameters.Add(new OracleParameter("S_DEPT", TextBox3.Text.ToString()));
                command.Parameters.Add(new OracleParameter("S_CRED", TextBox4.Text.ToString()));
                //command.Parameters.Add(new OracleParameter("S_CRED", txt_cred.Text.ToString()));
                command.Connection.Open();
                command.ExecuteNonQuery();
                command.Connection.Close();
                Label2.Text = " Data inserted sucessfully. ";
            }

        }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string oradb;
            oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
            OracleConnection conn = new OracleConnection(oradb);
            conn.Open();

            string query_1 = "select name from student where ID ='" + TextBox5.Text + "'";
            string query_2 = "select dept_name from student where ID ='" + TextBox5.Text + "'";
            string query_3 = "select tot_cred from student where ID ='" + TextBox5.Text + "'";


            OracleCommand cmd1 = new OracleCommand(query_1, conn);
            OracleCommand cmd2 = new OracleCommand(query_2, conn);
            OracleCommand cmd3 = new OracleCommand(query_3, conn);

            TextBox6.Text = cmd1.ExecuteScalar().ToString();
            TextBox7.Text = cmd2.ExecuteScalar().ToString();
            TextBox8.Text = cmd3.ExecuteScalar().ToString();

            Label3.Text = " Record Found !";
        }
        catch (Exception ex)
        {
            Label3.Text = ex.ToString();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            string oradb = "DATA SOURCE = localhost:1521 / orcl;  USER ID = dbuser1;" + " Password=dbuser1;";
            string commandText = "update student set tot_cred=(:S_CRED) where id=(:S_ID)";
            using (OracleConnection connection = new OracleConnection(oradb))
            using (OracleCommand command = new OracleCommand(commandText, connection))
            {
                command.Parameters.Add(new OracleParameter("S_ID", TextBox9.Text.ToString()));
                //command.Parameters.Add(new OracleParameter("S_DEPT", TextBox11.Text.ToString()));
                command.Parameters.Add(new OracleParameter("S_CRED", TextBox12.Text.ToString()));
                command.Connection.Open();
                command.ExecuteNonQuery();
                command.Connection.Close();
            }
            Label4.Text = " Data Updated Sucessfully !";
        }
        catch (Exception ex)
        {
            Label4.Text = ex.ToString();
        }
    }


 protected void Button5_Click(object sender, EventArgs e)    {
     try
     {
         string oradb = "DATA SOURCE = localhost:1521 / orcl; USER ID = dbuser1;" + " Password=dbuser1;";
         string commandText = "delete from student  where ID=(:S_ID)";
         using (OracleConnection connection = new OracleConnection(oradb))
         using (OracleCommand command = new OracleCommand(commandText, connection))
         {

             command.Parameters.Add(new OracleParameter("S_ID", TextBox13.Text.ToString()));
             command.Connection.Open();
             command.ExecuteNonQuery();
             command.Connection.Close();
             Label5.Text = "Data Deleted.";
         }

     }
        catch (Exception ex)
        {
            Label5.Text = ex.ToString();
        }
    }
}