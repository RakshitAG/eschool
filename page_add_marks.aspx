<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_add_marks.aspx.cs" Inherits="page_add_marks" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 142px; text-align: left">
                Select Student Code</td>
            <td style="width: 100px; text-align: center">
                <asp:DropDownList ID="ddl1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="139px" AutoPostBack="True">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Student Name Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Your Class Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Your Year Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Enter First exam Marks (Quaterly)</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Enter Second Exam Marks (Half Yearly)</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Enter Final Exam Marks(Yearly)</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 30px; text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Generate Result</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Your Total Marks</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 142px; text-align: left">
                Your Percentage</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton2_Click">Save Result</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

