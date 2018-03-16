<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="list_operator.aspx.cs" Inherits="list_operator" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eschool.mdb"
        SelectCommand="SELECT [ocode], [oname], [address], [mno], [doj], [scode], [salary] FROM [operator] ORDER BY [ocode]">
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ocode"
        DataSourceID="AccessDataSource1">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
            <asp:BoundField DataField="ocode" HeaderText="ocode" ReadOnly="True" SortExpression="ocode" />
            <asp:BoundField DataField="oname" HeaderText="oname" SortExpression="oname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
            <asp:BoundField DataField="scode" HeaderText="scode" SortExpression="scode" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
        </Columns>
    </asp:GridView>
</asp:Content>

