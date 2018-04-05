using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["prdcod"] == null)
                Response.Redirect("frmsrcprd.aspx");
            else
            {
                nsshop.clsprd obj = new nsshop.clsprd();
     List<nsshop.clsprdprp> k = obj.find_rec(Convert.ToInt32
                    (Session["prdcod"]));
     Label1.Text = k[0].prdnam;
     if (k[0].prdsalsts == 'N')
         Label2.Text = Convert.ToString(k[0].prdprc);
     else
         Label2.Text = Convert.ToString(k[0].prdprc -
             (k[0].prdsalper / 100) * k[0].prdprc);
     txtqty.Text = Convert.ToString(Session["qty"]);
     Label3.Text = (Convert.ToInt32(Label2.Text) *
         Convert.ToInt32(txtqty.Text)).ToString();
     Session["retcod"] = k[0].prdretcod;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void txtqty_TextChanged(object sender, EventArgs e)
    {
        Label3.Text = (Convert.ToInt32(Label2.Text) *
            Convert.ToInt32(txtqty.Text)).ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["qty"] = txtqty.Text;
        Session["amt"] = Label3.Text;
        Session["biladd"] = txtadd.Text;
        Session["cnt"] = drpcnt.SelectedItem.Text;
        Session["zipcod"] = txtzip.Text;
        Response.Redirect("frmpay.aspx");
    }
}