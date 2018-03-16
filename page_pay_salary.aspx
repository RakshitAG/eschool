<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_pay_salary.aspx.cs" Inherits="page_pay_salary" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
                Select Staff Code</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged"
                    Width="142px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Name Of Candidate Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Select Month</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl2" runat="server" Width="142px">
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Select Year</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl3" runat="server" Width="143px">
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Your Salary Amount Is</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Date Of Salary Paid Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Pay Salary</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

