using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
         con.Open();
         String query = "select * from product where pid="+Request.QueryString["pid"];
         SqlCommand com = new SqlCommand(query, con);
         com.CommandType = CommandType.Text;
         SqlDataReader dr = com.ExecuteReader();

         if (dr.Read())
         {
             itemid.Text = Convert.ToString(dr["pid"]);
             name.Text = Convert.ToString(dr["Pname"]);
             price.Text = Convert.ToString(dr["Prise"]);
             mno.Text = Convert.ToString(dr["Modelno"]);
             lblde.Text = Convert.ToString(dr["Details"]);
             hcid.Value = Convert.ToString(dr["cid"]);
             hpid.Value=Convert.ToString(dr["pid"]);
             Image1.ImageUrl = Convert.ToString(dr["img"]);
         }
         test.Text = Session["username"].ToString();
         con.Close();


    }
    protected void cart_Click(object sender, EventArgs e)
    {
        con.Open();
        String insert = "insert into cart(item_id,name,price,quantity,amount,image,pid,cid,username) values(@itm,@nm,@price,@qun,@amu,@img,@pid,@cid,@username)";
        SqlCommand com = new SqlCommand(insert, con);
        com.Parameters.AddWithValue("@itm", itemid.Text);
        com.Parameters.AddWithValue("@nm", name.Text);
        com.Parameters.AddWithValue("@price", price.Text);
        com.Parameters.AddWithValue("@qun", DropDownList1.SelectedValue);
        int amount = Convert.ToInt32(price.Text) * Convert.ToInt32(DropDownList1.SelectedValue);
        com.Parameters.AddWithValue("@amu",amount);
        com.Parameters.AddWithValue("@img", Image1.ImageUrl);
        com.Parameters.AddWithValue("@pid", hpid.Value);
        com.Parameters.AddWithValue("@cid", hcid.Value);
        com.Parameters.AddWithValue("@username",Session["username"]);



        com.ExecuteNonQuery();
        con.Close();
        Response.Write("done");
        Response.Redirect("viewcart.aspx");

    }
}