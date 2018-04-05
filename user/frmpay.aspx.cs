using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmpay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("confirm.aspx");
        PayPal.Profile.Initialize("khasij_1352472749_biz_api1.csknowledgehub.com", "1352472768", "AFcWxV21C7fd0v3bYYYRCpSSRl31AE.MX.qN3B87MBBz7W4l8Sr3V.fI", "sandbox");
        PayPal.Profile.Language = "en_US";
        PayPal.Profile.CancelUrl = "http://www.shopittome.csgroupstaging.com/user/cancel.aspx";
        PayPal.Profile.ReturnUrl = "http://www.shopittome.csgroupstaging.com/user/confirm.aspx";
        PayPal.Profile.IpnUrl = "http://www.shopittome.csgroupstaging.com/user/ipn.aspx";
        PayPal.Profile.CurrencyCode = "USD";
        PayPal.AdaptivePayments.PayRequest payrequest = null;
        try
        {
            payrequest = new PayPal.AdaptivePayments.PayRequest();

            payrequest.cancelUrl = "http://www.shopittome.csgroupstaging.com/user/cancel.aspx";
            payrequest.returnUrl = "http://www.shopittome.csgroupstaging.com/user/confirm.aspx";
            payrequest.ipnNotificationUrl = "http://www.shopittome.csgroupstaging.com/user/ipn.aspx";

           // var senderemail = "pragat_1346927626_per@csknowledgehub.com";
            nsshop.clsret obj = new nsshop.clsret();
            List<nsshop.clsretprp> k = obj.find_rec
                (Convert.ToInt32(Session["retcod"]));
            var primaryEmail =k[0].retmetact.ToString();
            Single  amt = Convert.ToSingle(Session["amt"]);
            Single   adminamt = (10 * amt)/100;
            var primaryAmount = amt-adminamt;
            var secondaryEmail = "paypal@shopit.com";
            var secondaryAmount = adminamt;

            //*********************Buyer Email *******************************

           //  payrequest.senderEmail = String.Empty ;
            payrequest.senderEmail = "pragat_1346927626_per@csknowledgehub.com";
            var secondaryRecievers = new List<PayPal.AdaptivePayments.Receiver>();

            //***********Primary Reciever Email and Amount ********************

            var primaryReciever = new PayPal.AdaptivePayments.Receiver();
            primaryReciever.amount = Convert.ToDecimal(primaryAmount);
         //   primaryReciever.email = primaryEmail.ToString();
            primaryReciever.email = "khasij_1352472749_biz@csknowledgehub.com";

            //***********************************************************

            //*****************Secondary Reciever Email **********************
            var secondaryReciever = new PayPal.AdaptivePayments.Receiver();
            secondaryReciever.amount = Convert.ToDecimal(secondaryAmount);
         //  secondaryReciever.email = secondaryEmail.ToString();
           secondaryReciever.email = "hsingh_1317621981_biz@csknowledgehub.com";
            //replace it with admin paypal account
            //************************************************************

            var ipaddress = "192.168.11.114";
            var memo = "Purchase Payment";
            var deviceid = "MY DEVICE";
            secondaryRecievers.Add(secondaryReciever);

            var response = PayPal.AdaptivePayments.ChainedPay.Execute
           (primaryReciever, secondaryRecievers, payrequest.senderEmail, 
           memo, ipaddress, deviceid, payrequest.cancelUrl,
           payrequest.returnUrl, payrequest.ipnNotificationUrl);


            if (response.responseEnvelope.ack == PayPal.AdaptivePayments.AckCode.Success)
            {

                var paykey = response.payKey;
                var redirecturl = "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_ap-payment & paykey=" + paykey;
                Response.Redirect(redirecturl);
            }
            else
            {
                Label1.Text = "There are some errors while making transaction,please try again later";

            }
        }
        catch
        {
            Label1.Text = "There are some errors while making transaction,please try again later";
        }
    }
}