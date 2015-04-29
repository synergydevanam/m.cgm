<%@ Page Title="Add Resident" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="addresident.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" Runat="Server">
        <ul>
		<li><a class="leftNav" href = "dashboard.aspx">Back</a></li>
	</ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" Runat="Server">
    <div id="loginBox">
		<form runat="server" action="dashboard.aspx">
            <h2>Add Resident</h2>
            <asp:DropDownList ID="DropDownStatus" runat="server" CssClass="AddListDropDown">
                <asp:ListItem Text="Status" Value="-1" />
                <asp:ListItem Text="Active" Value="1" />
                <asp:ListItem Text="Inactive" Value="0" />
            </asp:DropDownList><br />
            <asp:DropDownList ID="DropDownProperty" runat="server" CssClass="AddListDropDown">

            </asp:DropDownList>    <br />
			<input runat="server" id="txtName" name="txtName" type = "text" placeholder="Name"/><br/>
            Admission Date<br />
            <asp:DropDownList ID="DropDownAdmissionDateMonth" runat="server" CssClass="DropDownDateOfBirth" >
                <asp:ListItem Text="Month" Value="-1" />
                <asp:ListItem Text="January" Value="1" />
                <asp:ListItem Text="February" Value="2" />
                <asp:ListItem Text="March" Value="3" />
                <asp:ListItem Text="April" Value="4" />
                <asp:ListItem Text="May" Value="5" />
                <asp:ListItem Text="June" Value="6" />
                <asp:ListItem Text="July" Value="7" />
                <asp:ListItem Text="August" Value="8" />
                <asp:ListItem Text="September" Value="9" />
                <asp:ListItem Text="October" Value="10" />
                <asp:ListItem Text="November" Value="11" />
                <asp:ListItem Text="December" Value="12" />
            </asp:DropDownList>  
            <asp:DropDownList ID="DropDownAdmissionDateDay" runat="server" CssClass="DropDownDateOfBirth"></asp:DropDownList>  
            <asp:DropDownList ID="DropDownAdmissionDateYear" runat="server" CssClass="DropDownDateOfBirth"></asp:DropDownList>  <br />
            <input runat="server" id="txtPrimaryLanguage" name="txtPrimaryLanguage" type = "text" placeholder="Primary Language"/><br/>
            <input runat="server" id="txtOccupation" name="txtOccupation" type = "text" placeholder="Occupation"/><br/>
            <input runat="server" id="txtPlaceofBirth" name="txtPlaceofBirth" type = "text" placeholder="Place of Birth"/><br/>
            <textarea runat="server" class="txtArea" id="txtAddress" name="txtAddress" type = "text" placeholder="Address" rows="3"></textarea><br/>
            <input runat="server" id="txtTelephone" name="txtTelephone" type = "text" placeholder="Telephone"/><br/>
            <input runat="server" id="txtRace" name="txtRace" type = "text" placeholder="Race"/><br/>
            Date of Birth<br />
            <asp:DropDownList ID="DropDownDateOfBirthMonth" runat="server" CssClass="DropDownDateOfBirth" >
                <asp:ListItem Text="Month" Value="-1" />
                <asp:ListItem Text="January" Value="1" />
                <asp:ListItem Text="February" Value="2" />
                <asp:ListItem Text="March" Value="3" />
                <asp:ListItem Text="April" Value="4" />
                <asp:ListItem Text="May" Value="5" />
                <asp:ListItem Text="June" Value="6" />
                <asp:ListItem Text="July" Value="7" />
                <asp:ListItem Text="August" Value="8" />
                <asp:ListItem Text="September" Value="9" />
                <asp:ListItem Text="October" Value="10" />
                <asp:ListItem Text="November" Value="11" />
                <asp:ListItem Text="December" Value="12" />
            </asp:DropDownList>  
            <asp:DropDownList ID="DropDownDateOfBirthDay" runat="server" CssClass="DropDownDateOfBirth"></asp:DropDownList>  
            <asp:DropDownList ID="DropDownDateOfBirtYear" runat="server" CssClass="DropDownDateOfBirth"></asp:DropDownList>  <br />
            <asp:DropDownList ID="DropDownSex" runat="server" CssClass="AddListDropDown">
                <asp:ListItem Text ="Sex" Value="-1" Selected="True" />
                <asp:ListItem Text ="Male" Value="1"/>
                <asp:ListItem Text ="Female" Value="2"/>
            </asp:DropDownList>    <br />
            <asp:DropDownList ID="DropDownMaritalStatus" runat="server" CssClass="AddListDropDown">
                <asp:ListItem Text ="Marital Status" Value="-1" Selected="True" />
                <asp:ListItem Text="Single" Value="1" />
                <asp:ListItem Text="Married" Value="2" />
                <asp:ListItem Text="Divorced" Value="3" />
                <asp:ListItem Text="Widowed" Value="4"/>
                <asp:ListItem Text="Other" Value="5"/>
            </asp:DropDownList><br />    
            <input runat="server" id="txtHeight" name="txtHeight" type = "text" placeholder="Height"/><br/>
            <input runat="server" id="txtWeight" name="txtWeight" type = "text" placeholder="Weight"/><br/>
            <input runat="server" id="txtReligion" name="txtReligion" type = "text" placeholder="Religion"/><br/>
			<input runat="server" id="txtClergyman" name="txtClergyman" type = "text" placeholder="Clergyman"/><br/>
            <input runat="server" id="txtChurchSynagoue" name="txtChurchSynagoue" type = "text" placeholder="Church Synagoue"/><br/>
            <input runat="server" id="txtSocialSecurity" name="txtSocialSecurity" type = "text" placeholder="Social Security"/><br/>
            <input runat="server" id="txtMedicare" name="txtMedicare" type = "text" placeholder="Medicare"/><br/>
            <input runat="server" id="txtMedicalId" name="txtMedicalId" type = "text" placeholder="Medical Id"/><br/>
			<input runat="server" name="submit" class="btnLogin" type = "submit" value="Submit" enableviewstate="false"/>
		</form>
	</div>
</asp:Content>

