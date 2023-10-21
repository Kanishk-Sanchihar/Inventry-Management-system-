<%@ Page Title="" Language="C#" MasterPageFile="~/Inventry.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td style="text-align: center">
            <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">View Purchase List</asp:LinkButton>
        </td>
        <td style="text-align: center">
            <asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton14_Click">Register</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">View Sell List</asp:LinkButton>
        </td>
    </tr>
</table>
</asp:Content>

