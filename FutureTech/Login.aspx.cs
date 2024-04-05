using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button_Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        con.Open();
        string checkuser = "select count(*) from registration where UserName='" + unmtxt.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkPassword = "select password from registration where UserName='" + unmtxt.Text + "'";
            SqlCommand passcom = new SqlCommand(checkPassword, con);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password == pswtxt.Text)
            {
                Session["username"] = unmtxt.Text;
                Response.Write("password is correct");
            //    Response.Redirect("Users.aspx");              
                Response.Redirect("Home.aspx");
            }
            else
            {
                error.Text = "password is Not correct";
               // Response.Write("password is Not correct");

            }

        }
        else
        {
            error.Text="Username is Not correct";
            //Response.Write("Username is Not correct");

        }
        if (unmtxt.Text == "admin" && pswtxt.Text == "admin")
        {
            Session["uname"] = unmtxt.Text;
            Response.Redirect("~/Admin/Manage.aspx");
        }
        else
        {
            error.Text = "Invalid Details";
        }
    }
}