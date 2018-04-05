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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            nsshop.clsbrd obj = new nsshop.clsbrd();
            nsshop.clsbrdprp objprp = new nsshop.clsbrdprp();
            objprp.brdnam = TextBox1.Text;
            if (Button1.Text == "Submit")
                obj.save_rec(objprp);
            else
            {
                objprp.brdcod = Convert.ToInt32(ViewState["cod"]);
                obj.update_rec(objprp);
                Button1.Text = "Submit";
            }
            TextBox1.Text = String.Empty;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Label2.Text = "Try Again";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
 
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsshop.clsbrd obj= new nsshop.clsbrd();
        nsshop.clsbrdprp objprp = new nsshop.clsbrdprp();
        objprp.brdcod = Convert.ToInt32(
            GridView1.DataKeys[e.RowIndex][0]);
        obj.delete_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Int32 a = Convert.ToInt32(GridView1.DataKeys
            [e.NewEditIndex][0]);
        nsshop.clsbrd obj = new nsshop.clsbrd();
        List<nsshop.clsbrdprp> k = obj.find_rec(a);
        TextBox1.Text = k[0].brdnam;
        Button1.Text = "Update";
        ViewState["cod"] = a;
        e.Cancel = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
       
        Button1.Text = "Submit";
    }
}