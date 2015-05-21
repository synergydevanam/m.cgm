<%@ Page Title="" Language="C#" MasterPageFile="m_Master_Mobile.Master" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login | Care Giver Max Mobile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<%--<li><a class="leftNav" href ="Default.aspx">Home</a></li>--%>
		<li><a class="rightNav" href ="m_registration.aspx">Register</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="server">
    <div id="loginBox">
        
                <asp:TextBox ID="txtLoginName" runat="server" placeholder="Username"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:CheckBox ID="chkRememberme" runat="server" Checked="true" Visible="false"/>
                <asp:Button ID="btnLogin" runat="server" Text="Login"  class="btnLogin" 
                    onclick="btnLogin_OnClick"/>
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
		</div>
</asp:Content>
