<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_add_attd.aspx.cs" Inherits="page_add_attd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 150px; text-align: left">
                Select Student Code</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged"
                    Width="140px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: left">
                Student Name Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: left">
                Select Class</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl2" runat="server" Width="142px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: left">
                Class Year Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: left">
                Enter Number of Working Days</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 150px; text-align: left">
                Enter Number of Student Present Days</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Take Attendence</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

