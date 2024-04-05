using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_reg : System.Web.UI.Page
{
     SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        int index = e.Item.ItemIndex;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "delete from registration where Id=@id";
        com.Parameters.AddWithValue("@id", id.Text);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
            com = con.CreateCommand();
            com.CommandText = "delete from product where id=@pid";
            id.Text = e.CommandArgument.ToString();

        }
        else
        {
            Response.Write("Hello");
        }
    }
}