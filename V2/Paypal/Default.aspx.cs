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
            
            }
            if (Request.QueryString["orderSuccessfull"] != null || Request.QueryString["ID"] != null)
            {

            }
            if (Request.QueryString["orderCencel"] != null)
            {

            }
        }
    }
}