<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="page_add_student.aspx.cs" Inherits="page_add_student" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
                Your Registration Code Is</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter Your Name</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter Your Father Name</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter Your Date Of Birth</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Enter Your Address</td>
            <td style="width: 100px; text-align: center">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100px">
                Enter City</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
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
    <div style="text-align: left">
        <table>
            <tr>
                <td style="width: 100px">
                    Enter Your Contact Number</td>
                <td style="width: 100px; text-align: center">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Your School Code Is
                </td>
                <td style="width: 100px; text-align: center">
                    <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox>&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Select Your Class</td>
                <td style="width: 100px; text-align: center">
                    <asp:DropDownList ID="ddl1" runat="server" Width="143px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Your Admission Year Is</td>
                <td style="width: 100px; text-align: center">
                    <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Your Date of Admission Is</td>
                <td style="width: 100px; text-align: center">
                    <asp:TextBox ID="TextBox12" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click">Register Now</asp:LinkButton></td>
            </tr>
        </table>
    </div>
</asp:Content>

