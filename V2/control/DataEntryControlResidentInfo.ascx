<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DataEntryControlResidentInfo.ascx.cs" Inherits="control_PrintingControlResidentInfo" %>
<table>
     <tr>
                 <td style="font-weight: bold;">
                                    RESIDENT NAME
                                </td>
                                <td style="border-bottom: 1px solid #8E8F8F;">
                                    <asp:Label ID="lblResidentName" runat="server" Text=""></asp:Label>
                                </td>               
                                
                            </tr>
</table>
<table width="100%" cellspacing="10" border="0" cellpadding="0" style="display:none;">
                            <tr>
                            <td style="font-weight: bold;">
                                    RESIDENT NAME
                                </td>
                                <td style="border-bottom: 1px solid #8E8F8F;">
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </td>
                                
                                <td style="width: 60px; font-weight: bold;display:none;">
                                    PHYSICIAN
                                </td>
                                <td style="border-bottom: 1px solid #8E8F8F; width: 300px;display:none;">
                                    <asp:Label ID="lblPhysicianName" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr style="display:none;">
                                <td style="font-weight: bold;display:none;">
                                    ADMITTED FROM
                                </td>
                                <td colspan="3" style="border-bottom: 1px solid #8E8F8F;display:none;">
                                    <asp:Label ID="lblAdmittedFrom" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr style="display:none;">
                                <td style="font-weight: bold;display:none;">
                                    Compnay
                                </td>
                                <td style="border-bottom: 1px solid #8E8F8F; width: 406px;display:none;">
                                    <asp:Label ID="lblCompnayName" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 60px; font-weight: bold;display:none;">
                                    Pharmacy
                                </td>
                                <td style="border-bottom: 1px solid #8E8F8F; width: 300px;display:none;">
                                    <asp:Label ID="lblPharmacyPreference" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr style="display:none;">
                                <td style="font-weight: bold;display:none;">
                                    PROPERTY
                                </td>
                                <td colspan="3" style="border-bottom: 1px solid #8E8F8F;display:none;">
                                    <asp:Label ID="lblProperty" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr style="display:none;">
                                <td style="font-weight: bold;display:none;">
                                    Allergy
                                </td>
                                <td colspan="3" style="border-bottom: 1px solid #8E8F8F;display:none;">
                                    <asp:Label ID="lblAllergy" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>