using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Net;
public partial class retailer_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmprddet.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
         char s = Convert.ToChar(GridView1.DataKeys[e.Row.RowIndex][1]);
         Image img1 = (Image)(e.Row.FindControl("img1"));
         LinkButton lk3 = (LinkButton)(e.Row.FindControl("lk3"));
         if (s == 'Y')
         {
             img1.Visible = true;
             lk3.Text = "Remove from sale";
             Label lbl1 = (Label)(e.Row.FindControl("lb1"));
        lbl1.Text = "Discount " + GridView1.DataKeys[e.Row.RowIndex][2]
                       .ToString() + "%";
         }
         else
         {
             img1.Visible = false;
             lk3.Text = "Put on sale";
             Label lb2 = (Label)(e.Row.FindControl("lb2"));
             TextBox t1 = (TextBox)(e.Row.FindControl("t1"));
             lb2.Visible = true;
             t1.Visible = true;
         }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsshop.clsprd obj = new nsshop.clsprd();
        nsshop.clsprdprp objprp = new nsshop.clsprdprp();
        objprp.prdcod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex]
            [0]);
        obj.delete_rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Int32 a = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex][0]);
        Response.Redirect("frmprddet.aspx?pcod=" + a.ToString());
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        nsshop.clsprd obj = new nsshop.clsprd();
        nsshop.clsprdprp objprp = new nsshop.clsprdprp();
    objprp.prdcod = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
    char s = Convert.ToChar(GridView1.DataKeys[e.RowIndex][1]);
         if (s == 'N')
        {
              objprp.prdsalsts = 'Y';
        objprp.prdsalper = Convert.ToInt32(((TextBox)(GridView1.Rows
            [e.RowIndex].FindControl("t1"))).Text);
        obj.updprdsalsts(objprp);
        DataSet ds = obj.dspsalmalusr(objprp.prdcod);
        String bdy = "<h3>Products of your choice going on sale</h3>";
        List<nsshop.clsprdprp> k = obj.find_rec(objprp.prdcod);
        bdy += "<br><b>" + k[0].prdnam + "</b><br>";
        bdy += "Enjoy a disocunt of " + objprp.prdsalper + "%";
        for (Int32 i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            MailMessage mm = new MailMessage("csinfo@csgroupstaging.com",
     ds.Tables[0].Rows[i][0].ToString(), "Sale Mail", bdy);
            mm.IsBodyHtml = true;
   SmtpClient c = new SmtpClient("smtp.csgroupstaging.com", 25);
   NetworkCredential TheseCredentials = new NetworkCredential("csinfo@csgroupstaging.com", "cssoft123");

   c.UseDefaultCredentials = true;

   c.Credentials = TheseCredentials;
   //c.Send(mm);
        }
        }
        else
        {
            objprp.prdsalsts = 'N';
            objprp.prdsalper = 0;
            obj.updprdsalsts(objprp);
         }
   

    GridView1.DataBind();
    e.Cancel = true;
    }
}