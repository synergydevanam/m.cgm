<%@ Page Title="Registration | Care Giver Max Mobile" Language="C#" MasterPageFile="m_Master_Mobile.Master" AutoEventWireup="true" CodeFile="m_registration-step2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <script language="JavaScript" type="text/javascript">
       function calculation() {
            var noOfResident = document.getElementById("<%=txtResidentNumber.ClientID%>").value;
            var subtotalAmount = (noOfResident * 1.00) ;
            var totalAmount = (noOfResident * 1.00) + 99.00;
            document.getElementById("<%=txtTotalAmount.ClientID%>").value = '[((' + noOfResident + ' X $1) = ' + '$' + subtotalAmount.toFixed(0) + ') + ($199 - $100)]= $' + totalAmount.toFixed(0);
       }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" runat="Server">
    <ul>
        <li><a class="leftNav" href="registration.aspx">Back</a></li>
        <li><a class="rightNav" href="loginPage.aspx">Login</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentHome" runat="Server">
    <div id="loginBox">
            <table class="tblReg">
            <tr>
                    <td>No. of Resident(s)
                       </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtResidentNumber"  onkeyup="calculation()" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Registration Fee
                       </td>
                </tr>
                 <tr>
                    <td><asp:TextBox ID="txtRegistrationFee" runat="server" Enabled="false" Text="$199"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>Discount(If TORCH Member)
                       </td>
                </tr>
                 <tr>
                    <td><asp:TextBox ID="txtDiscount" runat="server" Enabled="false" Text="$100"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>Total Amount
                       </td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtTotalAmount" runat="server" Enabled="false" Width="100%"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>Card Type
                       </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlCardType" runat="server">
                            <asp:ListItem Value="MasterCard">MasterCard</asp:ListItem>
                            <asp:ListItem Value="Visa">Visa</asp:ListItem>
                            <asp:ListItem Value="Discover">Discover</asp:ListItem>
                            <asp:ListItem Value="American Express">American Express</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>
                <tr>
                    <td>Name on Card
                       </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCardHolderName"   runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>Card No.
                       </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCardNO"  runat="server"  ></asp:TextBox>
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
                <tr>
                    <td><%--CSC--%> Security Code
                    <%--For American Express, it's the four digits on the front of the card.
For MasterCard, Visa or Discover, it's the last three digits in the signature area on the back of your card.--%>
                       </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCSC"  runat="server"  ></asp:TextBox>
                        </td>
                </tr>
            </table>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  class="btnLogin" 
                onclick="btnSubmit_Click" />
    </div>
</asp:Content>

