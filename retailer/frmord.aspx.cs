using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class retailer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            TextBox2.Text = DateTime.Today.AddDays(1)
                .ToShortDateString();
            TextBox1.Text = DateTime.Today.AddDays(-30)
                .ToShortDateString();
            bind();
        }
    }
    protected String getsts(char sts)
    {
        switch (sts)
        {
            case 'N':
                return "<h4>Pending</h4>";
            case 'D':
                return "Delivered";
            default:
                return "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bind();
    }
    private void bind()
    {
        nsshop.clsord obj = new nsshop.clsord();
        DataSet ds = obj.dspretord(Convert.ToInt32
            (Session["cod"]), Convert.ToDateTime(TextBox1.Text)
            , Convert.ToDateTime(TextBox2.Text));
        Label1.Text = ds.Tables[0].Rows.Count.ToString();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}