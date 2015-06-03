using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paypal_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Notification"] != null)
            {
                lblmsg.Text = "Notification";
            }
            if (Request.QueryString["orderSuccessfull"] != null || Request.QueryString["ID"] != null)
            {
                lblmsg.Text = "Your order is successfull";
                Login paidUser = LoginManager.GetLoginByID(int.Parse(Request.QueryString["ID"]));
                try
                {
                    string body = "A subscriber have paid " + paidUser.ExtraField10 + @", <br/>Name:" + paidUser.FirstName + " " + paidUser.LastName + @",<br/> email: " + paidUser.Email + @" and contact:" + paidUser.CellPhone + @"";
                    Sendmail.sendEmail("info@caregivermax.com", "Caregivermax: Payment", "info@caregivermax.com", "anamuliut@gmail.com", "Caregivermax: Payment", body);

                    body = "Thank  you for your subscription. Once the payment is cleared, a technical support from Care Giver Max will call you and setup your business. Again, we appreciate your business and look forward to work with you.";
                    Sendmail.sendEmail("info@caregivermax.com", "Caregivermax: Payment", paidUser.Email, "anamuliut@gmail.com", "Caregivermax: Payment", body);
                
                }
                catch (Exception ex) { }
            }
            if (Request.QueryString["orderCencel"] != null)
            {
                lblmsg.Text = "Your have cancelled the order";
            }
        }
    }
}