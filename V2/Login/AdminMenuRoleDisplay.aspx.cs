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

public partial class AdminMenuRoleDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showMenuRoleGrid();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminMenuRoleInsertUpdate.aspx?menuRoleID=0");
    }
    protected void lbSelect_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        int id;
        id = Convert.ToInt32(linkButton.CommandArgument);
        Response.Redirect("AdminMenuRoleInsertUpdate.aspx?menuRoleID=" + id);
    }
    protected void lbDelete_Click(object sender, EventArgs e)
    {
        LinkButton linkButton = new LinkButton();
        linkButton = (LinkButton)sender;
        bool result = MenuRoleManager.DeleteMenuRole(Convert.ToInt32(linkButton.CommandArgument));
        showMenuRoleGrid();
    }

    private void showMenuRoleGrid()
    {
        gvMenuRole.DataSource = MenuRoleManager.GetAllMenuRoles();
        gvMenuRole.DataBind();
    }
}
