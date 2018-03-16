<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="list_school_count.aspx.cs" Inherits="list_school_count" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span style="font-size: 11pt; text-decoration: underline">List Of School with
        Their Counting Detail<br />
    </span></strong>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" HorizontalAlign="Center" ShowHeader="False">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
</asp:Content>

