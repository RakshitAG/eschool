<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="list_result.aspx.cs" Inherits="list_result" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; text-align: center">
                Select Year</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged"
                    Width="127px">
                </asp:DropDownList>
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton2_Click">Show Class</asp:LinkButton></td>
            <td style="width: 100px; text-align: center">
                Select Class</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl2" runat="server" Width="124px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Show Result</asp:LinkButton><br />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="7">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
</asp:Content>

