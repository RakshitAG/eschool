<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="page_operator_appoint.aspx.cs" Inherits="page_operator_appoint" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 145px; text-align: left">
                Operator Code Is</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Operator Name</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Operator Father's Name</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 145px; text-align: left">
                Enter Operator Address</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100px">
                Enter City</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter District</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter State</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                Enter Pin Code</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 151px; text-align: left">
                Enter Contact Number</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 151px; text-align: left">
                Enter Date Of Birth</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 151px; text-align: left">
                Enter Date of Joining</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 151px; text-align: left">
                Select Appoint School Code</td>
            <td style="width: 100px; text-align: center;">
                <asp:DropDownList ID="ddl1" runat="server" Width="148px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 151px; text-align: left">
                Enter Salary</td>
            <td style="width: 100px; text-align: center;">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 151px; text-align: left">
                Enter Account Password</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">LinkButton</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

