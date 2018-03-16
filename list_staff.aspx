<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="list_staff.aspx.cs" Inherits="list_staff" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span style="font-size: 11pt">List o All Employees Of School With their General
        Detail<br />
    </span></strong>
    <br />
    <asp:GridView ID="GridView1" runat="server">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>

</asp:Content>

