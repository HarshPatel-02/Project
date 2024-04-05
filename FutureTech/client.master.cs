using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["username"] == null)
        {
            btnlogin.Text = "Login";
        }
        else
        {
            btnlogin.Text = "Logout";
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        if (btnlogin.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Logout.aspx");
        }
    }
}
