using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class lenovo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["username"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
        con.Open();
        string q = "select * from product where cid=3";
        SqlDataAdapter da = new SqlDataAdapter(q, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
      // DataList1.DataSource = ds;
        DataList1.DataBind();
        
    }
}