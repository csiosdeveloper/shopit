using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        nsshop.clsstrlst obj = new nsshop.clsstrlst();
        DataSet ds = obj.dispstrlst(Convert.ToInt32(Session["cod"]));
        Label1.Text = ds.Tables[0].Rows.Count.ToString();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public String getprc(Single actprc, Single salper)
    {
        Single salprc;
        if (salper != 0)
            salprc = actprc - ((salper / 100) * actprc);
        else
            salprc = actprc;
        return salprc.ToString();
    }
}