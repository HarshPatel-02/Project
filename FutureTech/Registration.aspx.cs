using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from registration where UserName='" + unm.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Write("User already exists");
            }

        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
               // Guid newGUID=Guid.NewGuid();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
                con.Open();
                string insert = "insert into registration(FirstName,LastName,UserName,Email,Password,cpassword) values(@FirstName,@LastName,@uname,@email,@pass,@cpass)";
                SqlCommand com = new SqlCommand(insert, con);

              //  com.Parameters.AddWithValue("@id",newGUID.ToString());
                com.Parameters.AddWithValue("@FirstName",fnm.Text);
                com.Parameters.AddWithValue("@LastName", lnm.Text);
                com.Parameters.AddWithValue("@uname", unm.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@pass", psw.Text);
                com.Parameters.AddWithValue("@cpass", cpsw.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("Registation is successfully");


           int temp = Convert.ToInt32(com.ExecuteScalar().ToString());


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}