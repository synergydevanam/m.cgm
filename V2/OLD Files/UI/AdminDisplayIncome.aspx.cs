using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
 

public partial class AdminDisplayIncome : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
    {
       IncomeManager.LoadIncomePage(gvIncome, rptPager, 1, ddlPageSize);
      }
    }
     protected void PageSize_Changed(object sender, EventArgs e)
    {
   IncomeManager.LoadIncomePage(gvIncome,rptPager, 1, ddlPageSize);
 }
  protected void Page_Changed(object sender, EventArgs e)
    {
       int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
    IncomeManager.LoadIncomePage(gvIncome, rptPager, pageIndex, ddlPageSize);
   }
	protected void btnAdd_Click(object sender, EventArgs e)
	{
		Response.Redirect("AdminIncome.aspx?ID=0");
	}
	protected void lbSelect_Click(object sender, EventArgs e)
	{
		ImageButton linkButton = new ImageButton();
		linkButton = (ImageButton)sender;
		int id;
		id = Convert.ToInt32(linkButton.CommandArgument);
		Response.Redirect("AdminIncome.aspx?ID=" + id);
	}
	protected void lbDelete_Click(object sender, EventArgs e)
	{ 
		ImageButton linkButton = new ImageButton();
		linkButton = (ImageButton)sender;
		bool result = IncomeManager.DeleteIncome(Convert.ToInt32(linkButton.CommandArgument));
       IncomeManager.LoadIncomePage(gvIncome, rptPager, 1, ddlPageSize);
  	}
}

