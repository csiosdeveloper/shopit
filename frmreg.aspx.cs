using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        nsshop.clsprf obj = new nsshop.clsprf();
        nsshop.clsprfprp objprp = new nsshop.clsprfprp();
        objprp.prfbotsiz = "";
        objprp.prfcnt = "";
        objprp.prfdep = "";
        objprp.prfemlwhn = "";
        objprp.prfgnd=' ';
        objprp.prfnam="";
        objprp.prfshosiz="";
        objprp.prftopsiz="";
        objprp.prfyob=0;
        objprp.prfzipcod="";
         Int32 a=obj.save_rec(objprp);
         try
         {
             nsshop.clsusr obj1 = new nsshop.clsusr();
             nsshop.clsusrprp objprp1 = new nsshop.clsusrprp();
             objprp1.usreml = txteml.Text;
             objprp1.usrpass = txtpwd.Text;
             objprp1.usrretprfcod = a;
             objprp1.usrtyp = 'U';
             obj1.save_rec(objprp1);
             txteml.Text = String.Empty;
             Label1.Text = "Registration Successful";
         }
         catch (Exception ex)
         {
             Label1.Text = "Email ID already registered";
         }
    }
}