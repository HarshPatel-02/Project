using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class tt : System.Web.UI.Page
{
    //SqlConnection con= new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\sem 6\2\App_Data\Leptop.mdf;Integrated Security=True");
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Edit") {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
            com=con.CreateCommand();
            com.CommandText = "update product set pname=@pname,prise=@prise,modelno=@modelno,Details=@Details,cid=@cid,img=@img where product id=@pid";
           
            Label1.Text=e.CommandArgument.ToString();
          // Response.Write(Label1.Text)
            DataList2.DataBind();
        }
        else if (e.CommandName == "Delete") {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
            com = con.CreateCommand();
            com.CommandText = "delete from product where id=@pid";
            Label1.Text = e.CommandArgument.ToString();
            
        }

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {

        int index = e.Item.ItemIndex;
        TextBox pname = (TextBox)DataList2.Items[index].FindControl("pname");
        TextBox price = (TextBox)DataList2.Items[index].FindControl("price");
        TextBox modelno = (TextBox)DataList2.Items[index].FindControl("modelno");
        TextBox details = (TextBox)DataList2.Items[index].FindControl("details");
        TextBox cid = (TextBox)DataList2.Items[index].FindControl("cid");
       // TextBox img = (TextBox)DataList2.Items[index].FindControl("img");



        FileUpload file = (FileUpload)DataList2.Items[index].FindControl("FileUpload1");
        string path = "~/img/" + file.FileName;

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "update product set pname=@pname,prise=@prise,modelno=@modelno,Details=@Details,cid=@cid,img=@img where pid=@pid";
        com.Parameters.AddWithValue("@pname", pname.Text);
        com.Parameters.AddWithValue("@prise", price.Text);
        com.Parameters.AddWithValue("@modelno", modelno.Text);
        com.Parameters.AddWithValue("@Details", details.Text);
        com.Parameters.AddWithValue("@cid", cid.Text);
        com.Parameters.AddWithValue("@pid", Label1.Text);
        com.Parameters.AddWithValue("@img", path);

        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();
        //file.SaveAs(Request.MapPath("~/img/") + FileUpload.FileName);
        
              
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        int index = e.Item.ItemIndex;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "delete from product where pid=@pid";
        com.Parameters.AddWithValue("@pid", Label1.Text);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();
    }
    protected void Insert_Click(object sender, EventArgs e)
    {
        Response.Redirect("insert.aspx");

    }
   
    //protected void upload_Click(object sender, EventArgs e)
    //{
      
    //}
    //protected void upload(object sender, EventArgs e)
    //{
    //    if (FileUpload1.HasFile)
    //    {
    //        //FileUpload1.SaveAs(Server.MapPath("~/img") + FileUpload1.FileName);
    //        Image2.ImageUrl = "~/img/" + FileUpload1.FileName;
    //    }
    //    else
    //    {
    //        Response.Write("Could not Inserted");
    //    }
    //}
}