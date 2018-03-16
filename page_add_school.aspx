<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="page_add_school.aspx.cs" Inherits="page_add_school" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; text-align: left">
                School Code Is</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: left">
                Enter School Name</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: left">
                Select School Type</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddl1" runat="server" Width="142px">
                    <asp:ListItem>Primary</asp:ListItem>
                    <asp:ListItem>Secondary</asp:ListItem>
                    <asp:ListItem>Sr. Secondary</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: left">
                Select Student Type</td>
            <td style="width: 100px">
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="A" Text="Both" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:RadioButton ID="RadioButton2" runat="server"
                    GroupName="A" Text="Boys" />
                &nbsp; &nbsp; &nbsp;&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" GroupName="A"
                    Text="Girls" /></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: left">
                Enter Address</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100px">
                Enter City</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter District</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter Tehsil</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter State</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100px; text-align: left">
                Enter Pin Code</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: left">
                Enter Date of Opening</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Register</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

