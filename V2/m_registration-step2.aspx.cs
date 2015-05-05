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
                 ,[ExtraField8]='" + txtExpireDate.Text + @"'
                 ,[ExtraField9]='" + txtResidentNumber.Text + @"'
                where [LoginID]="+Request.QueryString["LoginID"];

        CommonManager.SQLExec(sql);
        Response.Redirect("LoginPage.aspx");
    }
}