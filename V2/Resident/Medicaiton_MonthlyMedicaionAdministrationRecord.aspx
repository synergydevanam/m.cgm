﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login/m_AdminMaster.master" AutoEventWireup="true"
    CodeFile="Medicaiton_MonthlyMedicaionAdministrationRecord.aspx.cs" Inherits="Resident_ADLRecord" %>

<%@ Register Src="../control/DataEntryControlResidentInfo.ascx" TagName="DataEntryControlResidentInfo"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <link href="../css/jquery-ui-1.8.20.custom.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.ui.timepicker.js" type="text/javascript"></script>
    <script src="../js/jquery-ui-1.8.20.custom.min.js" type="text/javascript"></script>
    <link href="../css/jquery.ui.timepicker.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var datess = $('#<%= txtTakingTime.ClientID %>').timepicker({
                showPeriod: true,
                showLeadingZero: true
            });
        });
       
    </script>
    <style type="text/css">
        .tableMedicinAdd
        {
            width: 100%;
            font-weight: bold;
        }
        .tableCss
        {
            width: 100%;
        }
        .tableCss td
        {
            padding: 5xp;
        }
        .tableCss th
        {
            padding: 5xp;
            background-color: #A6DBF4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHome" runat="Server">
    <div class="single_colom">
        <div>
            <table width="100%">
                <tr>
                    <td align="center" style="text-align: center; font-size: 20px; font-weight: bold;">
                        Medication Administration Record
                    </td>
                </tr>
                <tr>
                    <td>
                        <uc1:DataEntryControlResidentInfo ID="DataEntryControlResidentInfo1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <br />
                        <br />
                        <br />
                        <span style="font-size: 20px;">Setup Medication Detail</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="tableMedicinAdd">
                           
                                        (Select Either Taking time or PRN)
                           <br />
                                        <asp:Label ID="lblTakingTime" runat="server" Text="Taking Time: ">
                                                </asp:Label>
                                        <asp:HiddenField ID="hfMedicationTimeID" runat="server" Value="0" />
                                    <br />
                                        <%--For Multiple time please give (,). Format hh:mm AM/PM--%>
                                        <asp:TextBox ID="txtTakingTime" runat="server" Text="" Width="60px">
                                        </asp:TextBox>
                                    <br />
                                        Or
                                    <br />
                                        <asp:CheckBox ID="chkPRN" runat="server" Text="PRN" />
                                    <br />
                                      <asp:Label ID="lblMedicineID" runat="server" Text="Medication: ">
                                        </asp:Label>
                                    <br />
                                        <asp:DropDownList ID="ddlMedicine" runat="server" Width="75%">
                                        </asp:DropDownList>
                                    <br />
                                        <asp:TextBox ID="txtNewMedicine" runat="server" Text="">
                                        </asp:TextBox>
                                    <br />
                                        RX #
                                        <asp:TextBox ID="txtEXNo" runat="server" Text="">
                                        </asp:TextBox>
                                    <br />
                                    
                                        <asp:Label ID="lblQuality" runat="server" Text="Strength: ">
                    </asp:Label>
                                                                        <br />

                                        <asp:TextBox ID="txtQuality" runat="server" placeholder="325 mg">
                                                </asp:TextBox>
                                    <br />
                                        <asp:Label ID="lblQuantity" runat="server" Text="Direction For Use: ">
                                                </asp:Label>
                                    <br />
                                        <asp:TextBox ID="txtQuantity" Width="266px" runat="server" Text="1 Tablet by mouth">
                                                </asp:TextBox>
                                    <br />
                                        <asp:Label ID="lblFrequency" runat="server" Text="Dosage: ">
                                                </asp:Label>
                                    <br />
                                        <asp:TextBox ID="txtFrequency" runat="server" Text="3 times daily">
                                                </asp:TextBox>
                                    <br />
                                        <asp:Label ID="Label1" runat="server" Text="Pharmacy Name: ">
                                                </asp:Label>
                                                                        <br />

                                        <asp:TextBox ID="txtpharmacyName" runat="server" Text="">
                                                </asp:TextBox>
                                    <br />
                                        <asp:Label ID="Label2" runat="server" Text="Route of Administration: ">
                                                </asp:Label>
                                    <br />
                                        
                                        <asp:DropDownList ID="ddlRouteOfAdmin" runat="server">
                                            <asp:ListItem Value="By Mouth">By Mouth</asp:ListItem>
                                            <asp:ListItem Value="Rectally">Rectally</asp:ListItem>
                                            <asp:ListItem Value="Via G-Tube">Via G-Tube</asp:ListItem>
                                            <asp:ListItem Value="IM">IM</asp:ListItem>
                                            <asp:ListItem Value="Sublingually">Sublingually</asp:ListItem>
                                            <asp:ListItem Value="Ophthalmic">Ophthalmic</asp:ListItem>
                                            <asp:ListItem Value="Otic">Otic</asp:ListItem>
                                            <asp:ListItem Value="Subcutaneous">Subcutaneous</asp:ListItem>
                                            <asp:ListItem Value="Topical">Topical</asp:ListItem>
                                        </asp:DropDownList>
                                    <br />
                                        <asp:Label ID="Label3" runat="server" Text="Amount received: ">
                                                </asp:Label>
                                    <br />
                                        <asp:TextBox ID="txtAmount" runat="server" Text="">
                                                </asp:TextBox>
                                        <%-- <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>--%>
                                        <br />
                                        <table>
                                            <tr>
                                                <td valign="middle">
                                                    Status:
                                                </td>
                                                </tr><tr>
                                                <td valign="middle">
                                                    <asp:DropDownList ID="ddlStatus" runat="server">
                                                        <asp:ListItem Value="Active" Text="Active"></asp:ListItem>
                                                        <asp:ListItem Value="Inactive" Text="Inactive"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                </tr><tr>
                                                <td valign="middle">
                                                    <asp:CheckBox ID="chkAddDischargeRecord" runat="server" Text="Discharge Record?"
                                                        Visible="false" />
                                                    <asp:ImageButton ID="btnAdd" OnClick="btnAdd_Click" runat="server" ImageUrl="../App_Themes/Default/images/save.png" />
                                                </td>
                                                </tr><tr>
                                                <td valign="middle">
                                                    <%--<asp:Button ID="btnAdd" runat="server" Text="Save" OnClick="btnAdd_Click" />--%>
                                                    <asp:Label ID="lblNewMedicationAddedSuccessfully" runat="server" Text="New medication added Successfully."
                                                        Visible="false" ForeColor="Green"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <%--</ContentTemplate>
                                        </asp:UpdatePanel>--%>
                                    
                        </div>
                    </td>
                </tr>
                </table>
                
                        <hr />
                        <span style="font-size: 20px;">Manage Daily Medication</span>
                        <hr />
                    
                        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                            
                            <b>Existing Record</b> 
                            <br /><asp:DropDownList ID="ddlExistingRecord" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlExistingRecord_SelectedIndexChanged">
                        </asp:DropDownList><br />
                        <asp:ImageButton ID="btnSave" OnClick="btnSave_Click" runat="server" ImageUrl="../App_Themes/Default/images/save.png" />
                        <%--<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />--%>
                       <br /><asp:Label ID="lblMsg" runat="server" Text="Saved Successfully" ForeColor="Green"
                            Visible="false"></asp:Label>
                        
                        
                        <%--</ContentTemplate>
                        </asp:UpdatePanel>--%>
                    <br />
                        <asp:DropDownList ID="ddlMedicationList" runat="server">
                            <asp:ListItem Value="All">All Medicaiton</asp:ListItem>
                            <asp:ListItem Value="PRN">PRN only</asp:ListItem>
                            <asp:ListItem Value="Scheduled">Scheduled only</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlPrintOption" runat="server" Visible="false">
                            <asp:ListItem Value="0">All Medication</asp:ListItem>
                            <%--<asp:ListItem Value="1">Selected Medication only</asp:ListItem>--%>
                        </asp:DropDownList>
                        <br />
                        <asp:ImageButton ID="btnPrint" OnClick="btnPrint_Click" runat="server" ImageUrl="../App_Themes/Default/images/Print_plain.png" />
                        <br /> Status
                        <asp:DropDownList ID="ddlShowStaus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlShowStaus_SelectedIndexChanged">
                            <asp:ListItem Value="Active" Text="Active only"></asp:ListItem>
                            <asp:ListItem Value="Inactive" Text="Inactive only"></asp:ListItem>
                            <asp:ListItem Value="All" Text="All"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Medications<br /><a id="a_Report" runat="server" style="text-decoration: underline;
                            color: Blue;">Monthly medication Report</a>
                    <hr />
                        <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>--%>
                        <asp:GridView ID="gvMedicaiton" runat="server" Width="100%" AutoGenerateColumns="false"
                            ShowHeader="true" class='tableCss'>
                            <Columns>
                                <asp:TemplateField HeaderText="Medication">
                                    <ItemTemplate>
                                       <b>Time:</b><br /><asp:CheckBox ID="chkSelect" runat="server" Text='<%#Eval("TakingTime")%>' ValidationGroup='<%#Eval("MedicationTimeID")%>' />
                                    <hr />
                                    <%--</ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Medication">
                                    <ItemTemplate>--%>
                                       <b>Medicine:<br /></b> <%#Eval("MedicineName")%>
                                        <br />
                                        <b>Strength:</b><br />
                                    <%--</ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Strength">
                                    <ItemTemplate>--%>
                                        <%#Eval("Quality")%>
                                    <%--</ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direction For Use">
                                    <ItemTemplate>--%>
                                    <br />
                                    <b>Direction For Use:</b><br />
                                        <%#Eval("Quantity")%>
                                    <%--</ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dosage">
                                    <ItemTemplate>--%>
                                    <br />
                                   <b>Dosage:</b><br />
                                        <%#Eval("Frequency")%>
                                    <%--</ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Added By">
                                    <ItemTemplate>--%>
                                    <br />
                                    <b>Added By:</b><br />
                                        <%#Eval("UpdateByUser")%>
                                   <%-- </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Saved By">
                                    <ItemTemplate>--%>
                                    <br /><b>Saved By:</b><br />
                                        <asp:Label ID="lblSavedBy" runat="server" Text=""></asp:Label>
                                        <br />
                                        <b>Comment:</b><br />
                                        <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <%--<asp:Button ID="btnDeleteInGrid" runat="server" Text="Delete" CommandArgument='<%#Eval("MedicationTimeID") %>' OnClick="lbDelete_Click"/>
                                                <asp:Button ID="btnEditInGrid" runat="server" Text="Edit"  CommandArgument='<%#Eval("MedicationTimeID") %>' OnClick="lbEdit_Click"/>--%>
                                        <asp:ImageButton runat="server" ID="lbSelect" CommandArgument='<%#Eval("MedicationTimeID") %>'
                                            AlternateText="Edit" OnClick="lbEdit_Click" ImageUrl="~/App_Themes/CoffeyGreen/images/icon-pencil.png" />
                                        <%--<asp:ImageButton runat="server" ID="lbDelete"  CommandArgument='<%#Eval("MedicationTimeID") %>' OnClick="lbDelete_Click" 
                                                 OnClientClick="return confirm('Are you sure you want to delete selected Medication?')"
                                                  AlternateText="Delete" ImageUrl="~/App_Themes/CoffeyGreen/images/icon-delete.png"/>--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="Comment">
                                    <ItemTemplate>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                            </Columns>
                        </asp:GridView>
                        <%--</ContentTemplate>
                        </asp:UpdatePanel>--%>
                   
        </div>
    </div>
</asp:Content>
