<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registration | Care Giver Max Mobile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<li><a class="leftNav" href = "Default.aspx">Home</a></li>
		<li><a class = "rightNav" href = "login.aspx">Login</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="server">
    <div id="loginBox">
			<form runat="server">
        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" name="firstname" ></asp:TextBox>
                <input runat="server" id="firstname" name="firstname" type = "text" placeholder="First Name"/><br/>
                <input runat="server" id="lastname" name="lastname" type = "text" placeholder="Last Name"/><br/>
                <input runat="server" id="initial" name="initial" type = "text" placeholder="Initial"/><br/>
                <input runat="server" id="primaryphone" name="primaryphone" type = "text" placeholder="Primary Phone"/><br/>
                <input runat="server" id="alternatephone" name="alternatephone" type = "text" placeholder="Alternate Phone"/><br/>
                <input runat="server" id="address" name="address" type = "text" placeholder="Address"/><br/>
                <input runat="server" id="city" name="city" type = "text" placeholder="City"/><br/>
                <input runat="server" id="state" name="state" type = "text" placeholder="State"/><br/>
                <input runat="server" id="zip" name="zip" type = "text" placeholder="Zip"/><br/>
                <input runat="server" id="email" name="email" type = "text" placeholder="Email"/><br/>
                <input runat="server" id="loginname" name="loginname" type = "text" placeholder="Login Name"/><br/>
				<input runat="server" id="password" name="password" type = "password" placeholder="Password"/><br/>
                <asp:Button runat="server" CssClass="btnLogin" Text="Step 2" OnClick="Unnamed1_Click" />
				
			</form>
		</div>
</asp:Content>
