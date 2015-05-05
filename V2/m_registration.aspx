<%@ Page Title="" Language="C#" MasterPageFile="m_Master_Mobile.Master" AutoEventWireup="true" CodeFile="m_registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registration | Care Giver Max Mobile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<li><a class="leftNav" href = "Default.aspx">Home</a></li>
		<li><a class = "rightNav" href = "loginPage.aspx">Login</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="server">
    <div id="loginBox">
			
        <asp:TextBox ID="txtFirstName" runat="server"  placeholder="First Name" ></asp:TextBox>
        <asp:TextBox ID="txtMiddleName" runat="server"  placeholder="Middle Name" Visible="false"></asp:TextBox>
        <asp:TextBox ID="txtLastName" runat="server"  placeholder="Last Name" ></asp:TextBox>
        <asp:TextBox ID="txtInitial" runat="server"  placeholder="Initial" ></asp:TextBox>
        <asp:TextBox ID="txtLoginName" runat="server"  placeholder="Login Name"  Visible="false"></asp:TextBox>
        <asp:TextBox ID="txtEmail" runat="server"  placeholder="Email" ></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPasswordConfirm" runat="server"  placeholder="Retype Password"  TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtCellPhone" runat="server"  placeholder="Cell Phone" ></asp:TextBox>
        <asp:TextBox ID="txtHomePhone" runat="server"  placeholder="Home Phone" ></asp:TextBox>
        <asp:TextBox ID="txtWorkPhone" runat="server"  placeholder="Work Phone" ></asp:TextBox>
        <asp:TextBox ID="txtDetails" runat="server"  placeholder="Address" ></asp:TextBox>
                <asp:Button runat="server" CssClass="btnLogin" Text="Step 2" OnClick="btnAdd_Click" />
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
		
		</div>
</asp:Content>
