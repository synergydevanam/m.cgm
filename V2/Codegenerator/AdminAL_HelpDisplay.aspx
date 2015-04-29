<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true"
    CodeFile="AdminAL_HelpDisplay.aspx.cs" Inherits="AdminAL_HelpDisplay" Title="Display AL_Help By Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .gridCss
        {
            width: 100%;
            padding: 20px 10px 10px 10px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <asp:GridView ID="gvAL_Help" runat="server" AutoGenerateColumns="false" CssClass="gridCss">
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbSelect" runat="server" CommandArgument='<%#Eval("AL_HelpID") %>' OnClick="lbSelect_Click">
                            Select
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HelpTypeID">
                    <ItemTemplate>
                        <asp:Label ID="lblHelpTypeID" runat="server" Text='<%#Eval("HelpTypeID") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Question">
                    <ItemTemplate>
                        <asp:Label ID="lblQuestion" runat="server" Text='<%#Eval("Question") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Answer">
                    <ItemTemplate>
                        <asp:Label ID="lblAnswer" runat="server" Text='<%#Eval("Answer") %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%#Eval("AL_HelpID") %>' OnClick="lbDelete_Click">
                            Delete
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
