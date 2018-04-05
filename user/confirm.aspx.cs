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
            if (Session["prdcod"] != null)
            {
           nsshop.clsord obj = new nsshop.clsord();
          nsshop.clsordprp objprp = new nsshop.clsordprp();
          objprp.ordbiladd = Session["biladd"].ToString();
          objprp.ordbilcnt = Session["cnt"].ToString();
          objprp.ordbilzipcod = Session["zipcod"].ToString();
          objprp.orddat = DateTime.Now;
          objprp.orddelsts = 'N';
          objprp.ordprfcod =Convert.ToInt32(Session["cod"]);
          objprp.ordretcod = 
              Convert.ToInt32(Session["retcod"]);
          Int32 a= obj.save_rec(objprp);
          nsshop.clsorddet obj1 = new nsshop.clsorddet();
          nsshop.clsorddetprp objprp1 = new nsshop.clsorddetprp();
          objprp1.orddetordcod = a;
          objprp1.orddetprdcod = Convert.ToInt32(Session["prdcod"]);
          objprp1.orddetqty = Convert.ToInt32(Session["qty"]);
          obj1.save_rec(objprp1);
          Literal1.Text = "Your Order No. is " + a.ToString()+"<br>"+"It will be delivered in 3 days.To check order status visit <a href=frmmyord.aspx >My Orders</a>";
          Session["prdcod"] = null;
          Session["qty"] = null;
          Session["retcod"] = null;
          Session["biladd"] = null;
          Session["cnt"] = null;
          Session["zipcod"] = null;
            }
        }
    }
}