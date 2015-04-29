<%@ Page Title="Registration | Care Giver Max Mobile" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeFile="registration-step2.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="Server">
    <ul>
        <li><a class="leftNav" href="registration.aspx">Back</a></li>
        <li><a class="rightNav" href="login.aspx">Login</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="Server">
    <div id="loginBox">
        <form runat="server" action="dashboard.aspx">
            <table class="tblReg">
                <tr>
                    <td colspan="3">
                        <input runat="server" id="Text1" name="txtResidentNumber" type="text" placeholder="Number of Resident" />
                    </td>
                </tr>
                <tr>
                    <td>Total Amount</td>
                    <td colspan="2">
                        <asp:Label ID="lblTotalAmount" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input runat="server" id="txtNameOfCardHolder" name="txtResidentNumber" type="text" placeholder="Name of Card Holder" /></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input runat="server" id="txtCardNo" name="txtResidentNumber" type="text" placeholder="Card No" /></td>
                </tr>
                <tr>
                    <td colspan="3">Expire Date</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownExpireMonth" runat="server" CssClass="AddListDropDown">
                            
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownExpireDay" runat="server" CssClass="AddListDropDown">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownExpireYear" runat="server" CssClass="AddListDropDown">
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                
            </table>
            
            <input runat="server" name="submit" class="btnLogin" type="submit" value="Submit" enableviewstate="false" />
        </form>
    </div>
</asp:Content>

