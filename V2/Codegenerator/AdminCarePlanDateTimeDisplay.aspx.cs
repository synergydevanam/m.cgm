using System;
using System.Collections;
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

public partial class AdminCarePlanDateTimeDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showCarePlanDateTimeGrid();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminCarePlanDateTimeInsertUpdate.aspx?carePlanDateTimeID=0");
    }
    protected void lbSelect_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        int id;
        id = Convert.ToInt32(linkButton.CommandArgument);
        Response.Redirect("AdminCarePlanDateTimeInsertUpdate.aspx?carePlanDateTimeID=" + id);
    }
    protected void lbDelete_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        bool result = CarePlanDateTimeManager.DeleteCarePlanDateTime(Convert.ToInt32(linkButton.CommandArgument));
        showCarePlanDateTimeGrid();
    }

    private void showCarePlanDateTimeGrid()
    {
        gvCarePlanDateTime.DataSource = CarePlanDateTimeManager.GetAllCarePlanDateTimes();
        gvCarePlanDateTime.DataBind();
    }
}
