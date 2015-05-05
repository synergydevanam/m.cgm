﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string loginID = "1";
        txtLoginName.Text = txtEmail.Text;
        Login login = new Login();
        if (LoginManager.GetLoginByLoginName(txtLoginName.Text) != null)
        {
            lblMsg.Text = "Login Name dulplicate<br/>";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            return;
        }
        login.LoginName = txtLoginName.Text;

        if (txtPassword.Text != txtPasswordConfirm.Text)
        {
            lblMsg.Text = "Password and Confrim Password Does not match<br/>";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            return;
        }

        login.Password = txtPassword.Text;
        login.Email = txtEmail.Text;
        login.FirstName = txtFirstName.Text;
        login.MiddleName = txtMiddleName.Text;
        login.LastName = txtLastName.Text;
        login.CellPhone = txtCellPhone.Text;
        login.HomePhone = txtHomePhone.Text;
        login.WorkPhone = txtWorkPhone.Text;
        login.RowStatusID = 2;
        login.AddedBy = loginID;
        login.AddedDate = DateTime.Now;
        login.UpdatedBy = loginID;
        login.UpdatedDate = DateTime.Now;
        login.Details = txtDetails.Text;
        login.ExtraField1 = "";
        login.ExtraField2 = "Resident/AdminResidentDisplay.aspx";
        login.ExtraField3 = "";
        login.ExtraField4 = txtInitial.Text;
        login.ExtraField5 = "";
        login.ExtraField6 = "";
        login.ExtraField7 = "";
        login.ExtraField8 = "";
        login.ExtraField9 = "";
        login.ExtraField10 = "";
        int resutl = LoginManager.InsertLogin(login);

        lblMsg.Text = "Added Successfully<br/>";
        lblMsg.ForeColor = System.Drawing.Color.Green;
        //Response.Redirect("AdminLoginDisplay.aspx");

        Response.Redirect("registration-step2.aspx?LoginID=" + resutl);
    }
}