using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Net.Mail;
using System.Net;
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["rcod"] == null)
                Label1.Text = "Add Retailer";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            nsshop.clsret obj = new nsshop.clsret();
            nsshop.clsretprp objprp = new nsshop.clsretprp();
            objprp.retbusnam = txtbusnam.Text;
            objprp.retadd = txtadd.Text;
            objprp.retcnt = drpcnt.SelectedItem.Text;
            objprp.retzipcod = txtzipcod.Text;
            objprp.retmetact = txtmeract.Text;
            String s = FileUpload1.PostedFile.FileName;
            if (s != "")
                s = s.Substring(s.LastIndexOf('.'));
            if (Button1.Text == "Submit")
            {
                objprp.retlog = s;
                Int32 a = obj.save_rec(objprp);
                if (s != "")
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("../retpics")
                        + "//" + a.ToString() + s);
                nsshop.clsusr obj1 = new nsshop.clsusr();
                nsshop.clsusrprp objprp1 = new nsshop.clsusrprp();
                objprp1.usreml = txteml.Text;
                objprp1.usrpass = txtpwd.Text;
                objprp1.usrretprfcod = a;
                objprp1.usrtyp = 'R';
                obj1.save_rec(objprp1);
                //MailMessage mm = new MailMessage("csinfo@csgroupstaging.com", txteml.Text, "Login Deatils", "Username:" + txteml.Text + " and Password=" + txtpwd.Text);
                //SmtpClient c = new SmtpClient("smtp.csgroupstaging.com", 25);
               
                //NetworkCredential TheseCredentials = new NetworkCredential("csinfo@csgroupstaging.com", "cssoft123");

                //c.UseDefaultCredentials = true;

                //mm.IsBodyHtml = true;

                //c.Credentials = TheseCredentials;
                //c.Send(mm);
                Response.Redirect("frmret.aspx");
            }
        }
        catch (Exception exp)
        {
            Label2.Text = "Enter correct email";
        }

    }
}