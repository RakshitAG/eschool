<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_student_upgrade.aspx.cs" Inherits="page_student_upgrade" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; text-align: center">
                Select Year</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl1" runat="server" Width="114px">
                </asp:DropDownList></td>
            <td style="width: 100px; text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Show Class</asp:LinkButton></td>
            <td style="width: 100px; text-align: center">
                Select Class</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl2" runat="server" Width="114px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                Enter Upgrade Criteria(Passing Percentage)&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton2_Click">Upgrade Student For Next Class</asp:LinkButton></td>
        </tr>
    </table>

</asp:Content>

