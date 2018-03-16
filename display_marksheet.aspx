<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="display_marksheet.aspx.cs" Inherits="display_marksheet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="2" style="table-layout: auto; border-left-color: maroon; border-bottom-color: maroon;
        border-top-style: solid; border-top-color: maroon; border-right-style: solid;
        border-left-style: solid; border-collapse: separate; border-right-color: maroon;
        border-bottom-style: solid">
        <tr>
            <td style="width: 100px">
                Registration Code</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
            <td style="width: 100px">
                Date Of Birth</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Student Name</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
            <td style="width: 100px">
                Father Name</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                School Code</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
            <td style="width: 100px">
                School Name</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Class</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
            <td style="width: 100px">
                Session</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
    </table>
    <br />
    <table border="5" style="table-layout: fixed; border-left-color: maroon; border-bottom-color: maroon;
        border-top-style: solid; border-top-color: maroon; border-right-style: solid;
        border-left-style: solid; border-collapse: separate; border-right-color: maroon;
        border-bottom-style: solid">
        <tr>
            <td style="width: 100px">
                First Examination Marks</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Second Examination Marks</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Third Examination Marks</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Total Marks</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Percenatage</td>
            <td style="width: 100px; text-align: center">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Label"></asp:Label></td>
        </tr>
    </table>

</asp:Content>

