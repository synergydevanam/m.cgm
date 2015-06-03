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
        //add as office admin
        string sql = @"INSERT INTO [Login_LoginRole]
           ([RoleID]
           ,[LoginID]
           ,[RowStatusID]
           ,[AddedDate]
           ,[AddedBy]
           ,[ModifyDate]
           ,[ModifyBy])
        VALUES
           (6--<RoleID, int,>
           ,"+resutl+ @"--<LoginID, int,>
           ,1--<RowStatusID, int,>
           ,GETDATE()--<AddedDate, datetime,>
           ,'1'--<AddedBy, nvarchar(256),>
           ,GETDATE()--<ModifyDate, datetime,>
           ,'1'--<ModifyBy, nvarchar(256),>
            );
update Login_Login set AddedResident=0, RootUser=" + resutl + " where LoginID=" + resutl;

        CommonManager.SQLExec(sql);
        lblMsg.Text = "Added Successfully<br/>";
        lblMsg.ForeColor = System.Drawing.Color.Green;
        //Response.Redirect("AdminLoginDisplay.aspx");
        Sendmail.sendEmail(txtEmail.Text, txtFirstName.Text + " " + txtLastName.Text, "info@caregivermax.com", "anamuliut@gmail.com", "New user registered", "A new user registered for Care Giver Solution.");
        Sendmail.sendEmail("info@caregivermax.com", "Care Giver Max", txtEmail.Text, "anamuliut@gmail.com", "Signup at www.caregivermax.com", "Thank you for your interest and signing up with Care Giver max. We look forward to work with you");
        
        Response.Redirect("m_registration-step2.aspx?LoginID=" + resutl);
    }
}