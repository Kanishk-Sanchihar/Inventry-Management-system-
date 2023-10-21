<%@ Page Title="" Language="C#" MasterPageFile="~/Inventry.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        text-align: center;
        height: 29px;
    }
    .auto-style6 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td colspan="2" style="font-size: x-large; font-weight: 700; font-style: italic; color: #800000; text-align: center">Purchase</td>
    </tr>
    <tr>
        <td style="text-align: center">Select Supplier I&#39;d</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="165px" DataSourceID="SqlDataSource1" DataTextField="sid" DataValueField="sid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventryConnectionString %>" SelectCommand="SELECT [sid] FROM [suppliers]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">Item Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Quantity</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Date of Purchase</td>
        <td class="auto-style6">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Text="Purchase" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

