<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_staff_add.aspx.cs" Inherits="page_staff_add" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="vertical-align: middle; text-align: left">
        <tr>
            <td style="width: 145px; text-align: left">
                Your Code Is</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Your Name</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Your Father Name</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Your Date of Birth</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Your Address</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100px">
                Enter City</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter District</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter State</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter Pin Code</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Contact Number</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Your Qualification</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left; height: 23px;">
                Your School Code</td>
            <td style="width: 100px; text-align: center; height: 23px;">
                <asp:TextBox ID="TextBox13" runat="server" Enabled="False"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Select Your Post</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl1" runat="server" Width="143px" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Date Of Joining</td>
            <td style="width: 100px; text-align: center">
                &nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Your Salary Is</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox12" runat="server" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click">Register Now</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

