<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="list_school.aspx.cs" Inherits="list_school" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="scode" DataSourceID="AccessDataSource1" PageSize="7" EnableModelValidation="True">
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
            <asp:BoundField DataField="scode" HeaderText="Code" ReadOnly="True" SortExpression="scode">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:BoundField>
            <asp:BoundField DataField="sname" HeaderText="Name" SortExpression="sname">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="stype" HeaderText="stype" SortExpression="stype" />
            <asp:BoundField DataField="stutype" HeaderText="stutype" SortExpression="stutype" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
            <asp:BoundField DataField="tehsil" HeaderText="tehsil" SortExpression="tehsil" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="dop" HeaderText="dop" SortExpression="dop" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/eschool.mdb"
        DeleteCommand="DELETE FROM [school] WHERE (([scode] = ?) OR ([scode] IS NULL AND ? IS NULL))"
        InsertCommand="INSERT INTO [school] ([scode], [sname], [stype], [stutype], [address], [city], [district], [tehsil], [state], [pincode], [dop]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
        SelectCommand="SELECT * FROM [school]" UpdateCommand="UPDATE [school] SET [sname] = ?, [stype] = ?, [stutype] = ?, [address] = ?, [city] = ?, [district] = ?, [tehsil] = ?, [state] = ?, [pincode] = ?, [dop] = ? WHERE (([scode] = ?) OR ([scode] IS NULL AND ? IS NULL))" OnSelecting="AccessDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="scode" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="stype" Type="String" />
            <asp:Parameter Name="stutype" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="tehsil" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="dop" Type="String" />
            <asp:Parameter Name="scode" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="scode" Type="String" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="stype" Type="String" />
            <asp:Parameter Name="stutype" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="tehsil" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="dop" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>

</asp:Content>

