using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Dell_Click(object sender, EventArgs e)
    {
        Response.Redirect("dell.aspx");
    }
    protected void hp_Click(object sender, EventArgs e)
    {
        Response.Redirect("hp.aspx");

    }
    protected void lenovo_Click(object sender, EventArgs e)
    {
        Response.Redirect("lenovo.aspx");

    }
}