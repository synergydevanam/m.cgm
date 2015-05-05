<%@ Page Title="Registration | Care Giver Max Mobile" Language="C#" MasterPageFile="m_Master_Mobile.Master" AutoEventWireup="true" CodeFile="m_registration-step2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <script language="JavaScript" type="text/javascript">
       function calculation() {
            var noOfResident = document.getElementById("<%=txtResidentNumber.ClientID%>").value;
           var totalAmount = noOfResident * 0.5;
           document.getElementById("<%=txtTotalAmount.ClientID%>").value = '$'+totalAmount.toFixed(2);
       }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="Server">
    <ul>
        <li><a class="leftNav" href="registration.aspx">Back</a></li>
        <li><a class="rightNav" href="login.aspx">Login</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="Server">
    <div id="loginBox">
            <table class="tblReg">
                <tr>
                    <td>
                        <asp:TextBox ID="txtResidentNumber"  onkeyup="calculation()" runat="server" placeholder="Number of Resident" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Total Amount
                       </td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtTotalAmount" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:TextBox ID="txtCardHolderName"   runat="server" placeholder="Name on Card" ></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCardNO"  runat="server" placeholder="Card Name" ></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>Expire Date</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtExpireDate"  runat="server" placeholder="MM/yyyy" ></asp:TextBox>
                        </td>
                </tr>
                
            </table>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  class="btnLogin" 
                onclick="btnSubmit_Click" />
    </div>
</asp:Content>

