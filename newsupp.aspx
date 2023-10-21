<%@ Page Title="" Language="C#" MasterPageFile="~/Inventry.master" AutoEventWireup="true" CodeFile="newsupp.aspx.cs" Inherits="newsupp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

      <style type="text/css">
        .auto-style3 {
            font-size: x-large;
            color: #990000;
        }
        .auto-style4 {
            height: 34px;
        text-align: center;
    }
     

       
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   


    <br >
    <br >
    <br >
    <br >


   <div>
    <table border="1" cellpadding="3" cellspacing="2" align="center" width="50%" height="60%" >
        <tr>
            <td class="auto-style3" colspan="2" style="text-align: center"><strong>Add Supplier</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">Supplier ID</td>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">Supplier Name</td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="auto-style4">Item Sell</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Add Supplier" OnClick="Button1_Click" style="margin-top: 4px" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

   </div>
        
</asp:Content>

