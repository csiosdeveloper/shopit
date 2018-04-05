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
        if (Page.IsPostBack == false)
        {
            nsshop.clsprf obj = new nsshop.clsprf();
            List<nsshop.clsprfprp> k = obj.find_rec(Convert.ToInt32
                (Session["cod"]));
            if (k[0].prfnam == String.Empty)
                Response.Redirect("frmprf.aspx");
            CheckBoxList1.DataBind();
            nsshop.clsprfbrd obj1 = new nsshop.clsprfbrd();
            List<nsshop.clsprfbrdprp> k1=obj1.disp_rec(Convert
                .ToInt32(Session["cod"]));
            for (Int32 i = 0; i < k1.Count; i++)
            {
                CheckBoxList1.Items.FindByValue(k1[i].prfbrdbrdcod
                    .ToString()).Selected = true;
            }
            nsshop.clsprfprdtyp obj2 = new nsshop.clsprfprdtyp();
            List<nsshop.clsprfprdtypprp> k2 = obj2.disp_rec
                (Convert.ToInt32(Session["cod"]));
            CheckBoxList2.DataBind();
            for (Int32 i = 0; i < k2.Count ; i++)
            {
       CheckBoxList2.Items.FindByValue(k2[i].prfprdtypprdtypcod
                    .ToString()).Selected = true;
            }
            bind();
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bind();
    }
    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        bind();
    }
    private void bind()
    {
        String brd = "";
        String prdtyp = "";
        for (Int32 i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected == true)
                brd += CheckBoxList1.Items[i].Value + ",";
        }
        if (brd.Length > 0)
            brd = brd.Substring(0, brd.Length - 1);
        for (Int32 i = 0; i < CheckBoxList2.Items.Count; i++)
        {
            if (CheckBoxList2.Items[i].Selected == true)
                prdtyp += CheckBoxList2.Items[i].Value + ",";
        }
        if (prdtyp.Length > 0)
            prdtyp = prdtyp.Substring(0, prdtyp.Length - 1);
        nsshop.clsprd obj = new nsshop.clsprd();
        DataSet ds = obj.srcprd(brd, prdtyp);
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
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        nsshop.clsstrlst obj = new nsshop.clsstrlst();
        nsshop.clsstrlstprp objprp = new nsshop.clsstrlstprp();
        objprp.strlstdat = DateTime.Now;
        objprp.strlstprdcod = Convert.ToInt32(DataList1.DataKeys
            [e.Item.ItemIndex]);
        objprp.strlstprfcod =Convert.ToInt32(Session["cod"]);
        obj.save_rec(objprp);
        ImageButton img = (ImageButton)(e.Item.FindControl("image1"));
        img.Visible = false;
    }
}