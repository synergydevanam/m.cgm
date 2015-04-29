<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Care Giver Max Mobile</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<li><a class="leftNav" href = "login.aspx">Login</a></li>
		<li><a class = "rightNav" href = "registration.aspx">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHome" runat="server">
        <h2>Why CAREGIVER MAX?</h2>
		<img src = "images/lady_with_ipad.png"/>
		<p>Our Online Caregiver's Solution makes it easy and simple to keep up, so that you can Care More! <br/>Assisted Living, Memory Loss, Alzheimer Care, Dementia Care or just need it for Active Living Senior Care facilities? You are Coverd. The patient data is secured and safe. No manual document need to create and store them in a cabinet. IPAD and Laptop friendly, while we recommend Google Chrome or Firefox, you can use any of your favorite browsers. </p>
		
		<hr/>
		<h2>ACTIVE DAILY LIVING (ADL)</h2>
		<img src = "images/etc.png"/>
		<p>ADL will allow you to setup and manage day to day care, food servings and tracking visitor for each patient. This is where you can customize shower, denture care, sponge bath, mouth care and more. It is flexible enough per your patient’s need like whether it needed to be setup during morning care or evening care. You can also track Food % eaten per day or how many visitor(s) came to see the patient, all in one. It is easy to track which caregiver or nurse or office admin keeping up with the patient as system will log each user and their activity.</p>
		
		<hr/>
		<h2>CARE, FIRST. TECHNOLOGY, NEXT.</h2>
		
		<p>CareGiverMax is a cloud base solution, runs 24/7.<br/><br/>The solution is built in ASPX and .NET framework with SQL Server Database. For your convenience, we do the backup, upgrades even if there is any integration of the systems, it happens on our end. There is no download or upgrade on your end, no added cost either other than your monthly subscription fees. After any enhancement or deployment of the codes, you see the changes on your next login. It is as simple as that. </p>
		
</asp:Content>
