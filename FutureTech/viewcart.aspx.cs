using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Viewcart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
    int total = 0;

   // SqlConnection con;
    SqlCommand com;

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
        String str = "select * from cart where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int amount = Convert.ToInt32(ds.Tables[0].Rows[i][5].ToString());
            total = total + amount;
        }
        DataList1.DataSource = ds;
        DataList1.DataBind();
        lbltotal.Text = Convert.ToString(total);
        con.Close();
    }
    protected void payment_Click(object sender, EventArgs e)
    {
        Response.Redirect("shipinng.aspx");

    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        int index = e.Item.ItemIndex;
        com = con.CreateCommand();
        com.CommandText = "delete from cart where item_id=@item_id";
        com.Parameters.AddWithValue("@item_id", Label13.Text);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();
        Response.Redirect("viewcart.aspx");

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            com = con.CreateCommand();
            com.CommandText = "delete from cart where item_id=@item_id";
            Label13.Text = e.CommandArgument.ToString();
        }
        else
        {
            Response.Write("Hello");
        }
    }
}