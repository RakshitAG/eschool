<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="page_view_result.aspx.cs" Inherits="page_view_result" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 223px">
                Enter Registration Code</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Show Classes</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 223px">
                Select Class</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl1" runat="server" Width="247px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="11pt"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton2_Click">Show Marksheet</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

