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
            nsshop.clsprd obj = new nsshop.clsprd();
            List<nsshop.clsprdprp> k = obj.find_rec(Convert.ToInt32
                (Request.QueryString["pcod"]));
            if (k.Count > 0)
            {
                lblprdnam.Text = k[0].prdnam;
                lbldsc.Text = k[0].prddet;
                lblcom.Text = k[0].prdcom;
                lblcol.Text = k[0].prdcol;
                lblsiz.Text = k[0].prdsiz;
                if (k[0].prdsalsts == 'Y')
                {
                    lblprc.Text = "$"+(k[0].prdprc -
                     ((k[0].prdsalper / 100) * k[0].prdprc)).ToString();
                }
                else
                    lblprc.Text = "$"+k[0].prdprc.ToString();
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["prdcod"] = Convert.ToInt32(Request.QueryString["pcod"]);
        Session["qty"] = txtqty.Text;
        Response.Redirect("frmbil.aspx");
    }
}