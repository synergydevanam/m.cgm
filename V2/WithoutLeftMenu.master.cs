﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class DefaultMasterPage : System.Web.UI.MasterPage
{
    //public FormRights fright;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loginCheck();
        }
    }

    private void loginCheck()
    {
        bool isloggedIN = false;

        if ((Session["Login"] != null))
        {
            try
            {
                Login login = LoginManager.GetLoginByLoginName(((Login)Session["Login"]).LoginName.ToString());
                if (login != null)
                {
                    Session["Login"] = login;
                    isloggedIN = true;
                }
                else
                {
                    isloggedIN = false;
                }

                lblLoginName.Text = login.FirstName + " " + login.MiddleName + " " + login.LastName;
                a_loginName.HRef =a_loginName.HRef.Split('=')[0]+"="+ login.LoginID.ToString();
            }
            catch (Exception ex)
            {
                isloggedIN = false;
            }
        }
        if ((Request.Browser.Cookies) && (Request.Cookies["LoginName"] != null))
        {

            HttpCookie aCookie = Request.Cookies["LoginName"];

            Login login = LoginManager.GetLoginByLoginName(Convert.ToString(Server.HtmlEncode(aCookie.Value)));
            if (login != null)
            {
                Session["Login"] = login;
                isloggedIN = true;
            }

            lblLoginName.Text = login.FirstName + " " + login.MiddleName + " " + login.LastName;
            a_loginName.HRef =a_loginName.HRef.Split('=')[0]+"="+ login.LoginID.ToString();
        }

        if (isloggedIN)
        {

        }
        else
        {
            Session["PreviousPage"] = HttpContext.Current.Request.Url.AbsoluteUri;
            Response.Redirect("../LoginPage.aspx");
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (HttpContext.Current.Request.Url.AbsoluteUri.Contains("/Property/"))
        {
            Response.Redirect("AdminPropertyDisplay.aspx?SearchKey=" + txtSearchKey.Text);
        }
        else
        {
            Response.Redirect("../Resident/AdminResidentDisplay.aspx?SearchKey=" + txtSearchKey.Text);
        }
    }
}
