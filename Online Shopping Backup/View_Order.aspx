<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_Order.aspx.cs" Inherits="Online_Shopping_Backup.View_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="order_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="809px" Width="951px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="Username" SortExpression="user_name" />
            <asp:BoundField DataField="product_id" HeaderText="Product Id" SortExpression="product_id" />
            <asp:BoundField DataField="email_address" HeaderText="Email address" SortExpression="email_address" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
            <asp:BoundField DataField="payment_type" HeaderText="Payment Method" SortExpression="payment_type" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [main_order]"></asp:SqlDataSource>
</asp:Content>
