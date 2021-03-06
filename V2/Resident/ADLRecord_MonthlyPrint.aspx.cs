﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;

public partial class Resident_ADLRecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            _loadYears();
            _loadMonths();
            loadList();
        }
    }

    private void _loadYears()
    {
        try
        {
            int firstYear = DateTime.Now.Year - 5;
            for (int i = 0; i < 11; i++)
            {
                ddlYears.Items.Add(new ListItem((firstYear + i).ToString()));
            }
            //ddlYears.Items.Insert(0, new ListItem("...Select Year...", "0"));
            ddlYears.SelectedValue = firstYear + 5 + "";
        }
        catch (Exception ex)
        {
        }
    }

    private void _loadMonths()
    {
        try
        {
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames.TakeWhile(m => m != String.Empty).Select((m, i) => new { Month = i + 1, MonthName = m }).ToList();
            foreach (var month in months)
            {
                ddlMonths.Items.Add(new ListItem(month.MonthName, month.Month.ToString()));
            }

            //ddlMonths.Items.Insert(0, new ListItem("...Select Month...", "0"));
            ddlMonths.SelectedValue = DateTime.Now.Month.ToString();

        }
        catch (Exception ex)
        {
        }
    }

    private void loadList()
    {
        DateTime startDate = DateTime.Parse(ddlYears.SelectedValue + "-"+ddlMonths.SelectedValue+"-1");
        DateTime endDate = startDate.AddMonths(1).AddDays(-1);

        string html = "";

        //Initial 
        html += "<table  border='0' class='reportTable'><tr>";
        html += "<tr><td colspan='2'></td>";
        
        int totalDayOfthisMonth = 0;
        for (int i = 0; startDate.AddDays(i) <= endDate; i++)
        {
            html += "<td style='text-align:center'>" + startDate.AddDays(i).ToString("dd") + "<br/>"  + startDate.AddDays(i).DayOfWeek.ToString().Substring(0,1) + "</td>";
            totalDayOfthisMonth = i;
        }
        html += "</tr>";
        List<ADLHeaderDetail> aDLHeaderDetailByResident = ADLHeaderDetailManager.GetAllADLHeaderDetailsByResidentID(int.Parse(Request.QueryString["ResidentID"]));
        
        if (aDLHeaderDetailByResident.Count == 0)
        {
            aDLHeaderDetailByResident = ADLHeaderDetailManager.GetDefaultAfterInsertADLHeaderDetails(int.Parse(Request.QueryString["ResidentID"]));
        }
        //DataSet ds = MedicationTimeManager.GetAllMedicationTimesByResident(int.Parse(Request.QueryString["ResidentID"]));
        //DataSet dsAllData = MedicineTimenDateManager.GetMedicationTimenDateByResidentID(int.Parse(Request.QueryString["ResidentID"]));
        DataSet dsAllData = ADLHeaderDetailnDateTimeManager.GetAllADLHeaderDetailnDateTimeByResidentIDWithDateRange(int.Parse(Request.QueryString["ResidentID"]),startDate,endDate);
        foreach (ADLHeaderDetail headerDetail in aDLHeaderDetailByResident)
        {
            html += "<tr><td>" + headerDetail.ExtraField1 + "</td><td>" + headerDetail.ExtraField2 + "</td>";
            //html += "</tr>" + "<tr><td>" + dr["MedicineName"] + "</td><td colspan='" + (totalDayOfthisMonth + 1).ToString() + "'>Report will goes here</td>";

            for (int i = 0; startDate.AddDays(i) <= endDate; i++)
            {
                bool isFount = false;
                foreach (DataRow drAllData in dsAllData.Tables[0].Rows)
                {
                    if (headerDetail.ADLHeaderDetailID.ToString() == drAllData["ADLHeaderDetailID"].ToString() && startDate.AddDays(i).ToString("yyyy-MM-dd") == DateTime.Parse(drAllData["ADLDateTime"].ToString()).ToString("yyyy-MM-dd"))
                    {
                        isFount = true;
                        if (drAllData["ExtraField1"].ToString() == "")
                        {
                            html += "<td></td>";
                            break;
                        }
                        else
                        {
                            html += "<td style='background-color:#DDDDDD;color:Black;'>" + drAllData["ExtraField1"].ToString() + "<br/>[" + drAllData["ExtraField2"].ToString() + "]</td>";
                            break;
                        }
                    }
                }

                if (!isFount)
                {
                    html += "<td></td>";
                }
                
            }

            html += "</tr>";
        }

        html += "</table>";

        lblMonthlyPrint.Text = html;
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
    protected void ddlMonths_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadList();
    }
    protected void ddlYears_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadList();
    }
}