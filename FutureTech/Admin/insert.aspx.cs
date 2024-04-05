using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class insert : System.Web.UI.Page
{
     SqlConnection con;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ListItem i = new ListItem();
            i.Text = "SELECT";
            i.Value = "-1";
            i.Selected = true;
            pnm.Items.Insert(0, i);
            pnm.SelectedIndex = 0;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);

        com = con.CreateCommand();

        com.CommandText = "insert into product(pid,pname,prise,modelno,Details,cid,img)values (@pid,@pname,@prise,@modelno,@Details,@cid,@img)";
        com.Parameters.AddWithValue("@pid",pid.Text);
        
        com.Parameters.AddWithValue("@pname", pnm.SelectedItem.Text);
        com.Parameters.AddWithValue("@prise", price.Text);
        com.Parameters.AddWithValue("@modelno", modelno.Text);
        com.Parameters.AddWithValue("@details", details.Text);
        com.Parameters.AddWithValue("@cid", cid.Text);
        com.Parameters.AddWithValue("@img",Image1.ImageUrl);


        con.Open();
        int res = com.ExecuteNonQuery();
        con.Close();
        if (res > 0)
        {
            lbl.Text = "record inserted successfully";
        }
        else
        {
            lbl.Text = "could not inserted record";
        }
       // pnm.Text = "";
        price.Text = "";
        modelno.Text = "";
        details.Text = "";
        cid.Text = "";

        Response.Redirect("manage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //FileUpload1.SaveAs(Server.MapPath("~/img") + FileUpload1.FileName);
            Image1.ImageUrl = "~/img/" + FileUpload1.FileName;
        }
        else
        {
            Response.Write("Could not Inserted");
        }
    }
    protected void pnm_SelectedIndexChanged(object sender, EventArgs e)
    {
        cid.Text = pnm.SelectedValue;
    }
}