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
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["pcod"] == null)
            {
                TabContainer1.Tabs[1].Enabled = false;
                TabContainer1.ActiveTabIndex = 0;
            }
            else
            {
                Int32 a = Convert.ToInt32(Request.QueryString["pcod"]);
                ViewState["cod"] = a;
                Button1.Text = "Update";
                TabContainer1.ActiveTabIndex = 0;
                nsshop.clsprd obj = new nsshop.clsprd();
                List<nsshop.clsprdprp> k = obj.find_rec(a);
                txtcol.Text = k[0].prdcol;
                txtcom.Text = k[0].prdcom;
                txtdet.Text = k[0].prddet;
                txtprc.Text = k[0].prdprc.ToString();
                txtprdnam.Text = k[0].prdnam;
                txtsiz.Text = k[0].prdsiz;
                drpbrd.DataBind();
                drpbrd.SelectedIndex = -1;
                drpbrd.Items.FindByValue(k[0].prdbrdcod.ToString())
                    .Selected = true;
                drpprdtyp.DataBind();
                drpprdtyp.SelectedIndex = -1;
                drpprdtyp.Items.FindByValue(k[0].prdprdtypcod
                    .ToString()).Selected = true;
                bind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        nsshop.clsprd obj = new nsshop.clsprd();
        nsshop.clsprdprp objprp = new nsshop.clsprdprp();
        objprp.prdbrdcod = Convert.ToInt32(drpbrd
            .SelectedValue);
        objprp.prdprdtypcod = Convert.ToInt32(drpprdtyp
            .SelectedValue);
   objprp.prdretcod = Convert.ToInt32(Session["cod"]);
   objprp.prdnam = txtprdnam.Text;
   objprp.prdcol = txtcol.Text;
   objprp.prdcom = txtcom.Text;
   objprp.prddet = txtdet.Text;
   objprp.prdprc = Convert.ToSingle(txtprc.Text);
   objprp.prdsalper = 0;
   objprp.prdsalsts = 'N';
   objprp.prdsiz = txtsiz.Text;
   if (Button1.Text == "Submit")
   {
       Int32 a = obj.save_rec(objprp);
       ViewState["cod"] = a;
       TabContainer1.Tabs[0].Enabled = false;
       TabContainer1.Tabs[1].Enabled = true;
   }
   else
   {
       objprp.prdcod = Convert.ToInt32(ViewState["cod"]);
       obj.update_rec(objprp);
   }
   TabContainer1.ActiveTabIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        nsshop.clsprdpic obj = new nsshop.clsprdpic();
        nsshop.clsprdpicprp objprp = new nsshop.clsprdpicprp();
        objprp.prdpicprdcod = Convert.ToInt32
            (ViewState["cod"]);
        if (CheckBox1.Checked == true)
            objprp.prdmanpicsts = 'T';
        else
            objprp.prdmanpicsts = 'F';
        String s;
        s = FileUpload1.PostedFile.FileName;
        if (s != "")
            s = s.Substring(s.LastIndexOf('.'));
        objprp.prdpicpic = s;
        Int32 a = obj.save_rec(objprp);
        if (s != "")
            FileUpload1.PostedFile.SaveAs(Server.MapPath
                ("../prdpics") + "//" + a.ToString() + s);
        bind();
    }
    private void bind()
    {
        nsshop.clsprdpic obj = new nsshop.clsprdpic();
        DataList1.DataSource = obj.disp_rec(
            Convert.ToInt32(ViewState["cod"]));
        DataList1.DataBind();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        nsshop.clsprdpic obj = new nsshop.clsprdpic();
        nsshop.clsprdpicprp objprp = new nsshop.clsprdpicprp();
        objprp.prdpiccod = Convert.ToInt32
            (DataList1.DataKeys[e.Item.ItemIndex]);
        obj.delete_rec(objprp);
        bind();
    }
}