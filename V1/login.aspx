<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login | Care Giver Max Mobile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<li><a class="leftNav" href = "Default.aspx">Home</a></li>
		<li><a class = "rightNav" href = "registration.aspx">Register</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="server">
    <div id="loginBox">
			<form runat="server" action="dashboard.aspx">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
				<input runat="server" id="username" name="username" type = "text" placeholder="Username"/><br/>
				<input runat="server" id="password" name="password" type = "password" placeholder="Password"/><br/>
				<input runat="server" name="submit" class="btnLogin" type = "submit" value="Login" enableviewstate="false"/>
			</form>
		</div>
</asp:Content>
