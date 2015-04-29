<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard | Care Giver Max Mobile</title>
    <script src="script.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="server">
    <ul>
		<li><a class="leftNav" href = "addresident.aspx">Resident</a></li>
		<li><a class="rightNav" href = "#">Property</a></li>
	</ul>
    <div style="clear:both" ></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="server">
    <div id="dashboard">
			<div class="res" id="res1">
			<table class="tblOfButtons">
			<tr>
			<td>
				<div class="btnRes">
					<img src = "images/edit.png"/><br/>
					<a href = "#">Edit</a>
				</div>
			</td>
			<td>
				<div class="btnRes">
					<img src = "images/task.png"/><br/>
					<a href = "#">Task</a>
				</div>
			</td>
			<td>
				<div class="btnRes">
					<a href ="dashboard.aspx"><img src = "images/Cancel.png"/></a>
					<a href = "dashboard.aspx">Cancel</a>
				</div>
			</td>
			</tr>
			</table>
			</div>
			<table id="TblDashBoard" border="1">
				<tr>
					<th>Resident Name</th>
				</tr>
				<tr>
					<td><a href = "javascript:ShowDiv('res1', 'TblDashBoard')">Janet Favinger</a></td>
				</tr>
				<tr>
					<td><a href = "#">Janet Favinger</a></td>
				</tr>
				<tr>
					<td><a href = "#">Janet Favinger</a></td>
				</tr>
				<tr>
					<td><a href = "#">Janet Favinger</a></td>
				</tr>
				<tr>
					<td><a href = "#">Janet Favinger</a></td>
				</tr>
			</table>
		</div>
</asp:Content>
