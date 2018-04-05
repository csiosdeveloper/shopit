using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class retailer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        nsshop.clsord obj = new nsshop.clsord();
        nsshop.clsordprp objprp = new nsshop.clsordprp();
        objprp.ordcod = Convert.ToInt32(GridView1.DataKeys
            [e.NewEditIndex][0]);
        objprp.orddelsts = 'D';
        obj.update_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}