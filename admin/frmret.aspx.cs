using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmretdet.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsshop.clsret obj = new nsshop.clsret();
        nsshop.clsretprp objprp = new nsshop.clsretprp();
        objprp.retcod = Convert.ToInt32(GridView1
            .DataKeys[e.RowIndex][0]);
        obj.delete_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }
}