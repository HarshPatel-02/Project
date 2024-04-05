using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);

                con.Open();
                string insert = "insert into feedback(username,email,message) values(@unm,@email,@msg)";
                SqlCommand com = new SqlCommand(insert, con);

                com.Parameters.AddWithValue("@unm",unmtxt.Text);
                com.Parameters.AddWithValue("@email", emailtxt.Text);
                com.Parameters.AddWithValue("@msg", msgtxt.Text);
                com.ExecuteNonQuery();
           
                unmtxt.Text = "";
                emailtxt.Text = "";
                msgtxt.Text = "";
        
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        unmtxt.Text = "";
        emailtxt.Text = "";
        msgtxt.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
    }
}

 