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
            for (Int32 i = 1940; i <= DateTime.Today.Year; i++)
            {
                drpyob.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            nsshop.clsprf obj = new nsshop.clsprf();
            List<nsshop.clsprfprp> k = obj.find_rec(Convert.ToInt32
                (Session["cod"]));
            txtnam.Text = k[0].prfnam;
            txtbotsiz.Text = k[0].prfbotsiz;
            txtshosiz.Text = k[0].prfshosiz;
            txttopsiz.Text = k[0].prftopsiz;
            txtzip.Text = k[0].prfzipcod;
            drpcnt.DataBind();
            drpcnt.SelectedIndex = -1;
       if(k[0].prfcnt!="")
            drpcnt.Items.FindByText(k[0].prfcnt).Selected = true;
       if(k[0].prfyob !=0)
            drpyob.Items.FindByValue(k[0].prfyob.ToString())
                .Selected = true;
            drpemlwhn.DataBind();
            drpemlwhn.SelectedIndex = -1;
     if(k[0].prfemlwhn !="")
            drpemlwhn.Items.FindByText(k[0].prfemlwhn).Selected = true;
            if (k[0].prfgnd == 'M')
                RadioButtonList1.SelectedIndex = 0;
            else if (k[0].prfgnd == 'F')
                RadioButtonList1.SelectedIndex = 1;
            CheckBoxList1.DataBind();
            nsshop.clsprfbrd obj1 = new nsshop.clsprfbrd();
            List<nsshop.clsprfbrdprp> k1 = obj1.disp_rec(Convert
                .ToInt32(Session["cod"]));
            for (Int32 i = 0; i < k1.Count; i++)
            {
     CheckBoxList1.Items.FindByValue(k1[i].prfbrdbrdcod.ToString())
                    .Selected = true;
            }
            CheckBoxList2.DataBind();
            nsshop.clsprfprdtyp obj2 = new nsshop.clsprfprdtyp();
     List<nsshop.clsprfprdtypprp> k2 = obj2.disp_rec(Convert.ToInt32
                (Session["cod"]));
     for (Int32 i = 0; i < k2.Count; i++)
     {
 CheckBoxList2.Items.FindByValue(k2[i].prfprdtypprdtypcod.ToString()
             ).Selected = true;
     }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            nsshop.clsprf obj = new nsshop.clsprf();
            nsshop.clsprfprp objprp = new nsshop.clsprfprp();
            objprp.prfbotsiz = txtbotsiz.Text;
            objprp.prfcnt = drpcnt.SelectedItem.Text;
            objprp.prfdep = "";
            objprp.prfemlwhn = drpemlwhn.SelectedItem.Text;
            objprp.prfgnd = Convert.ToChar(RadioButtonList1.SelectedValue);
            objprp.prfnam = txtnam.Text;
            objprp.prfshosiz = txtshosiz.Text;
            objprp.prftopsiz = txttopsiz.Text;
            objprp.prfzipcod = txtzip.Text;
            objprp.prfyob = Convert.ToInt32(drpyob.SelectedValue);
            objprp.prfcod = Convert.ToInt32(Session["cod"]);
            obj.update_rec(objprp);
            nsshop.clsprfbrd obj1 = new nsshop.clsprfbrd();
            nsshop.clsprfbrdprp objprp1 = new nsshop.clsprfbrdprp();
            objprp1.prfbrdcod = Convert.ToInt32(Session["cod"]);
            obj1.delete_rec(objprp1);
            for (Int32 i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    objprp1.prfbrdprfcod = Convert.ToInt32(Session["cod"]);
                    objprp1.prfbrdbrdcod = Convert.ToInt32(CheckBoxList1.Items[i]
                        .Value);
                    obj1.save_rec(objprp1);
                }
            }

            nsshop.clsprfprdtyp obj2 = new nsshop.clsprfprdtyp();
            nsshop.clsprfprdtypprp objprp2 = new nsshop.clsprfprdtypprp();
            objprp2.prfprdtypcod = Convert.ToInt32(Session["cod"]);
            obj2.delete_rec(objprp2);
            for (Int32 i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected == true)
                {
                    objprp2.prfprdtypprfcod = Convert.ToInt32(Session["cod"]);
                    objprp2.prfprdtypprdtypcod = Convert.ToInt32(CheckBoxList2
                        .Items[i].Value);
                    obj2.save_rec(objprp2);
                }
            }
        }
        catch (Exception ex)
        {
            Label2.Text = "Try Again";
        }
    }
}