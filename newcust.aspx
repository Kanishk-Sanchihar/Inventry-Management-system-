<%@ Page Title="" Language="C#" MasterPageFile="~/Inventry.master" AutoEventWireup="true" CodeFile="newcust.aspx.cs" Inherits="newcust" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <br >
    <br >
    <br >
    <br >
    <table border="1" cellpadding="3" cellspacing="2" align="center" width="50%" height="60%">
        <tr>
            <td colspan="2" style="text-align: center; font-weight: 700; font-size: x-large; font-style: italic; color: #800000">New Customer</td>
        </tr>
        <tr>
            <td style="text-align: center">Customer Id</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">Customer Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Add Customer" OnClick="Button1_Click1" style="height: 29px" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

