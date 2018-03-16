<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="list_student.aspx.cs" Inherits="list_student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; text-align: center;">
                Select Year</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl1" runat="server" Font-Bold="False" Font-Underline="False"
                    Width="121px">
                </asp:DropDownList></td>
            <td style="width: 100px; text-align: center;">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Show Class</asp:LinkButton></td>
            <td style="width: 100px; text-align: center;">
                Select Class</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl2" runat="server" Width="112px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True"
        OnClick="LinkButton2_Click">Show List</asp:LinkButton></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="20">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
</asp:Content>

