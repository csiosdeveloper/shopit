using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        nsshop.clsusr obj = new nsshop.clsusr();
        Int32 a;
        char typ;
        a = obj.logincheck(TextBox1.Text, TextBox2.Text
            , out typ);
        if (a == -1)
            Label1.Text = "Email Password Incorrect";
        else
        {
            Session["cod"] = a;
            FormsAuthenticationTicket tk = new
            FormsAuthenticationTicket(1, TextBox1.Text,
    DateTime.Now, DateTime.Now.AddHours(2),
    false, typ.ToString());
            String s = FormsAuthentication.Encrypt(tk);
            HttpCookie ck = new HttpCookie(FormsAuthentication
                .FormsCookieName, s);
            Response.Cookies.Add(ck);

            if (typ == 'R')
                Response.Redirect("retailer/frmprd.aspx");
            else if (typ == 'A')
                Response.Redirect("admin/frmret.aspx");
            else if (typ == 'U')
                Response.Redirect("user/frmsrcprd.aspx");
        }
    }
}