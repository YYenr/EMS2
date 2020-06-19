<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sperson.aspx.cs" Inherits="EMS201724112142.Sperson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--显示所有人员-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="All_Sper" runat="server" Text="显示所有人员" class="btn btn-light" OnClick="All_Sper_Click"/>
        <asp:Button ID="Search_Sper" runat="server" Text="按条件查询人员"  class="btn btn-light" OnClick="Search_Sper_Click"/>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" width="60%" Height="150px" HorizontalAlign="Center"  AllowPaging="True" AllowSorting="True" GridLines="None">
            <Columns>                
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#eddcf1" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#f7c0ff" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name], [phone], [isManager], [Did] FROM [Employee]">
        </asp:SqlDataSource>
    </div>
</asp:Content>
