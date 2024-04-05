using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class shipinng : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "select * from cart where username='" + Session["username"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int item_id = Convert.ToInt32(ds.Tables[0].Rows[i][1].ToString());
            string name = Convert.ToString(ds.Tables[0].Rows[i][2].ToString());
            int price = Convert.ToInt32(ds.Tables[0].Rows[i][3].ToString());
            int quantity = Convert.ToInt32(ds.Tables[0].Rows[i][4].ToString());
            int amount = Convert.ToInt32(ds.Tables[0].Rows[i][5].ToString());

            string query1 = "insert into bill(username,item_id,name,price,quantity,total,date) values (@username,@item_id,@name,@price,@quantity,@total,@date)";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@username", Session["username"]);
            cmd.Parameters.AddWithValue("@item_id", item_id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@total", amount);
            cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
        }
        con.Close();
        con.Open();
        string q = "delete from cart where username='" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        cmd1.ExecuteNonQuery();
        con.Close();

        con.Open();
        string insert = "insert into shipping(name,address,mobileno,date,username) values(@name,@address,@mobileno,@date,@username)";
        SqlCommand com = new SqlCommand(insert, con);

        //  com.Parameters.AddWithValue("@id",newGUID.ToString());
        com.Parameters.AddWithValue("@name", nm.Text);
        com.Parameters.AddWithValue("@address", add.Text);
        com.Parameters.AddWithValue("@mobileno", mno.Text);
        com.Parameters.AddWithValue("@date", DateTime.Now.ToString());
        com.Parameters.AddWithValue("@username", Session["username"]);
        
        com.ExecuteNonQuery();
        
      Response.Redirect("bill.aspx");
    }
}