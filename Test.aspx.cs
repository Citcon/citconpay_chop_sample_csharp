using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string uriString = "https://citconpay.com/payment/pay_qr";

        // Create a new WebClient instance.
        WebClient myWebClient = new WebClient();
        myWebClient.Headers.Add("Authorization", tbAuthToken.Text);

        NameValueCollection nvc = new NameValueCollection();
        nvc.Add("vendor", tbVendor.Text);
        nvc.Add("amount", tbAmount.Text);
        nvc.Add("currency", tbCurrency.Text);
        nvc.Add("reference", tbReference.Text);
        nvc.Add("ipn_url", tbIPNURL.Text);
        nvc.Add("callback_url_success", tbCallBackURLSuccess.Text);
        nvc.Add("callback_url_failure", tbCallBackURLFailure.Text);

        byte[] responseArray = myWebClient.UploadValues(uriString, "POST", nvc);

        // Decode and display the response.
        Response.Write(Encoding.ASCII.GetString(responseArray));
        Response.End();
    }
}