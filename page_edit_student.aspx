<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="page_edit_student.aspx.cs" Inherits="page_edit_student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; text-align: center">
                Enter Your Registration Code</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton1_Click">Search My Detail</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="11pt"></asp:Label></td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td style="width: 100px">
                Name</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Father Name</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Address</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Contact Number</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Your School Code</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Your Running Class</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Your Current Studying Year</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Registration Date Is</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px; text-align: center">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter New Conatct Number (If Required)</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True"
                    OnClick="LinkButton2_Click">Update</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

