using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sql = @"update [Login_Login] set [ExtraField5]='"+txtCardHolderName.Text+@"'
                 ,[ExtraField6]='" + txtCardNO.Text + @"'
                 ,[ExtraField7]='" + txtExpireDate.Text + @"'
                 ,[ExtraField8]='" + txtCSC.Text + @"@" + ddlCardType.SelectedValue + @"'
                 ,[ExtraField9]='" + txtResidentNumber.Text + @"'
                 ,[ExtraField10]='" + ((decimal.Parse(txtResidentNumber.Text)* decimal.Parse("1.00"))+decimal.Parse("99.00")).ToString("0.00") + @"'
                where [LoginID]=" +Request.QueryString["LoginID"];

        CommonManager.SQLExec(sql);

        Response.Redirect(PaymentManager.GetPayPalPaymentUrl(int.Parse(Request.QueryString["LoginID"]), false), true); ;
    }
}