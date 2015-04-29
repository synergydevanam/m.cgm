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

public partial class AdminSectionLabelDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showSectionLabelGrid();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminSectionLabelInsertUpdate.aspx?sectionLabelID=0");
    }
    protected void lbSelect_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        int id;
        id = Convert.ToInt32(linkButton.CommandArgument);
        Response.Redirect("AdminSectionLabelInsertUpdate.aspx?sectionLabelID=" + id);
    }
    protected void lbDelete_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        bool result = SectionLabelManager.DeleteSectionLabel(Convert.ToInt32(linkButton.CommandArgument));
        showSectionLabelGrid();
    }

    private void showSectionLabelGrid()
    {
        gvSectionLabel.DataSource = SectionLabelManager.GetAllSectionLabels();
        gvSectionLabel.DataBind();
    }
}
