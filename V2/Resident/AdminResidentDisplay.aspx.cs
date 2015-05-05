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
using System.Collections.Generic;

public partial class AdminResidentDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadProperty();
            showResidentGrid();
        }
    }
    private Login getLogin()
    {
        Login login = new Login();
        try
        {
            if (Session["Login"] == null) { Session["PreviousPage"] = HttpContext.Current.Request.Url.AbsoluteUri; Response.Redirect("../LoginPage.aspx"); }

            login = (Login)Session["Login"];
        }
        catch (Exception ex)
        { }

        return login;
    }

    private void loadProperty()
    {
        ListItem li = new ListItem("All Properties...", "0");
        ddlPropertyID.Items.Add(li);

        List<Property> properties = new List<Property>();
        properties = PropertyManager.GetAllPropertiesSearch("Where AL_Property.ExtraField7 <> 'InActive' and AL_Property.PropertyID in (0" +( getLogin().ExtraField3==""?"":","+getLogin().ExtraField3) + ")"); 
        foreach (Property property in properties)
        {
            ListItem item = new ListItem(property.Address.ToString(), property.PropertyID.ToString());
            ddlPropertyID.Items.Add(item);
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminResidentInsertUpdate.aspx?residentID=0");
    }
    protected void lbSelect_Click(object sender, EventArgs e)
    {
        ImageButton linkButton = new ImageButton();
        linkButton = (ImageButton)sender;
        int id;
        id = Convert.ToInt32(linkButton.CommandArgument);
        Response.Redirect("AdminResidentInsertUpdate.aspx?residentID=" + id);
    }
    protected void lbDelete_Click(object sender, EventArgs e)
    {
        ImageButton linkButton = new ImageButton();
        linkButton = (ImageButton)sender;
        bool result = ResidentManager.DeleteResident(Convert.ToInt32(linkButton.CommandArgument));
        showResidentGrid();
    }

    private void showResidentGrid()
    {
        string searchString = "Where 1=1 and " + (ddlStatus.SelectedValue == "All" ? "" : "AL_Resident.ExtraField10='" + ddlStatus.SelectedValue + "' and") + " AL_Resident.ExtraField1 in ('0" + (getLogin().ExtraField3 == "" ? "" : "','" + getLogin().ExtraField3.Replace(",", "','")) + "')";

        if (Request.QueryString["SearchKey"] != null && hfHasSearchDone.Value=="0")
        {
            hfHasSearchDone.Value = "1";
            searchString += " and AL_Resident.Address  like '%" + Request.QueryString["SearchKey"] + "%' or  AL_Resident.Name like '%" + Request.QueryString["SearchKey"] + "%' ";
        }

        if (ddlPropertyID.SelectedIndex != 0)
        {
            searchString += " And AL_Resident.ExtraField1 = " + ddlPropertyID.SelectedValue;
        }

        searchString += "and  AL_Resident.Name<>''  order by AL_Resident.Name ";

        string sql = @"SELECT distinct AL_Resident.ResidentID,AL_Resident.Name FROM AL_Resident
    inner join AL_Property on AL_Resident.ExtraField1 = AL_Property.PropertyID 
" +searchString;

        DataSet ds = CommonManager.SQLExec(sql);

        lblCount.Text = " ("+ds.Tables[0].Rows.Count+") ";
        //LinkPermissionChecking(searchResult);
        //gvResident.DataSource = searchResult;
        //gvResident.DataBind();
        //LoadGridColor();

        string html="<div id='dashboard'>";
        string html1 = "<table  id='TblDashBoard'><tr><td>Resident Name</td><td>Task</td></tr>";
        string html2="";
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            html1 += "<tr>";

            html1 += "<td><a href='#'>" + dr["Name"].ToString() + @"</a></td>";
            html1 += "<td><a href=\"javascript:ShowDiv('res"+dr["ResidentID"].ToString()+"', 'TblDashBoard')\">Task</a></td>";

            html1 += "</tr>";

            html2 += @"<div class='res' id='res"+dr["ResidentID"].ToString()+ @"'>
			<table class='tblOfButtons'>
			" + "<tr><td><div class='btnRes'><a href =\"javascript:back('res" + dr["ResidentID"].ToString() + "', 'TblDashBoard')\"><< Back</a></div></td></tr>" + @"
            <tr><td><div class='btnRes'><a href ='ADLRecord.aspx?ResidentID=" + dr["ResidentID"].ToString() + @"'>ADL Record</a></div></td></tr>
			<tr><td><div class='btnRes'><a href ='AssessmentnCare.aspx?ResidentID=" + dr["ResidentID"].ToString() + @"'>Comprehensive Assessment</a></div></td></tr>
			<tr><td><div class='btnRes'><a href ='ServiceCarePlanAssessment.aspx?ResidentID=" + dr["ResidentID"].ToString() + @"'>Service Care & Assessment</a></div></td></tr>
			<tr><td><div class='btnRes'><a href ='Medicaiton_MonthlyMedicaionAdministrationRecord.aspx?residentID=" + dr["ResidentID"].ToString() + @"'>Medicaiton</a></div></td></tr>
			<tr><td><div class='btnRes'><a href ='ObservationNote.aspx?residentID=" + dr["ResidentID"].ToString() + @"'>Observation Log</a></div></td></tr>
			<tr><td><div class='btnRes'><a href ='DoctorsOrder.aspx?residentID=" + dr["ResidentID"].ToString() + @"'>Doctor's Order</a></div></td></tr>
			"+"<tr><td><div class='btnRes'><a href =\"javascript:back('res"+dr["ResidentID"].ToString()+"', 'TblDashBoard')\"><< Back</a></div></td></tr>"+@"
			</table>
			</div>";

        }

        lblPrint.Text = html + html2+ html1 +"</table></div>";
    }

    private void LinkPermissionChecking(List<Resident> searchResult)
    {
        bool li_ADLRecord = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_ADLRecord", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());
        bool li_ComprehensiveAssessment = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_ComprehensiveAssessment", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());
        bool li_ServiceCareAssessment = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_ServiceCareAssessment", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());
        bool li_Medicaiton = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_Medicaiton", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());
        bool li_ObservationLog = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_ObservationLog", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());
        bool li_DoctorsOrder = ButtonManager.GetAllButtonsByPageURLnUserIDnButtonName("li_DoctorsOrder", HttpContext.Current.Request.Url.AbsoluteUri, getLogin().LoginID.ToString());

        foreach (Resident item in searchResult)
        {
            item.li_ADLRecord = li_ADLRecord;
            item.li_ComprehensiveAssessment = li_ComprehensiveAssessment;
            item.li_DoctorsOrder = li_DoctorsOrder;
            item.li_Medicaiton = li_Medicaiton;
            item.li_ObservationLog = li_ObservationLog;
            item.li_ServiceCareAssessment = li_ServiceCareAssessment;
        }
    }
    protected void ddlPropertyID_SelectedIndexChanged(object sender, EventArgs e)
    {
        showResidentGrid();
    }

    private void LoadGridColor()
    {
        bool lightGray = false;
        string lastProperty = "";
        foreach (GridViewRow item in gvResident.Rows)
	    {
            Label lblProperty = (Label)item.FindControl("lblProperty");
            if (lastProperty == "")
            {
                lastProperty = lblProperty.Text;
            }
            else 
            {
                if (lblProperty.Text != lastProperty)
                {
                    lastProperty = lblProperty.Text;
                    lightGray = !lightGray;
                }
            }

            if (lightGray)
            {
                item.BackColor = System.Drawing.Color.LightGray;
            }
            else
            {
                item.BackColor = System.Drawing.Color.White;
            }
	    }
    }
}
