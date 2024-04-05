using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);

    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            fillgrid();
        }
    }
  protected void fillgrid()
    {
        con.Open();
        String str = "select * from bill where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int amount = Convert.ToInt32(ds.Tables[0].Rows[i][6].ToString());
            total = total + amount;
        }
        DataList1.DataSource = ds;
        DataList1.DataBind();
        lbltotal.Text = Convert.ToString(total);
        con.Close();
        con.Open();
        //string p = "delete from bill where username='" + Session["username"] + "'";
        //SqlCommand cmd2 = new SqlCommand(p, con);
        //cmd2.ExecuteNonQuery();
        //con.Close();
       
    
    }
}