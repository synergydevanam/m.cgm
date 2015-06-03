<%@ Page Title="" Language="C#" MasterPageFile="~/m_Master_Mobile.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Paypal_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" Runat="Server">
<ul>
		<%--<li><a class="leftNav" href ="Default.aspx">Home</a></li>--%>
		<li><a class="rightNav" href ="../m_registration.aspx">Register</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" Runat="Server">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
</asp:Content>

