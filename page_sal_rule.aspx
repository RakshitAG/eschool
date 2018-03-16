<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="page_sal_rule.aspx.cs" Inherits="page_sal_rule" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 148px; text-align: left">
                Enter Current Year Salary Commission</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 148px; text-align: left">
                Select Post</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="141px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 148px; height: 24px; text-align: left">
                Enter Amount</td>
            <td style="width: 100px; height: 24px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px; text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Enter Data</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px; text-align: center">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

