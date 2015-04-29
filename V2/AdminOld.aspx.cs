﻿using System;
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
 
public partial class Admin : System.Web.UI.Page
{
    public FormRights fright;
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser currentUser;
        currentUser = Membership.GetUser();
        if (currentUser == null)
            Response.Redirect("~/login.aspx");

        if (currentUser.UserName != "admin")
        {
            dvUserManagement.Visible = false; 
        }

        var clientID = currentUser.ProviderUserKey.ToString();
        string pageName = "AdminDisplayClient";
        fright = FormRightsManager.GetFormRightsByUserIDFormID(pageName, clientID);
    }
}