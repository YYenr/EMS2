<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sdpt.aspx.cs" Inherits="EMS201724112142.Sdpt1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--显示所有部门-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="All_Sdpt" runat="server" Text="显示所有部门" OnClick="All_Sdpt_Click" class="btn btn-light"/>
        <asp:Button ID="Search_Sdpt" runat="server" Text="按条件查询部门"  class="btn btn-light" OnClick="Search_Sdpt_Click"/>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" width="50%" Height="150px" HorizontalAlign="Center"  AllowPaging="True" AllowSorting="True" PageSize="5" GridLines="None">
            <Columns>                
                <asp:BoundField DataField="Did" HeaderText="部门代号" ReadOnly="True" SortExpression="Did" />
                <asp:BoundField DataField="Dname" HeaderText="部门名称" SortExpression="Dname" />
                <asp:BoundField DataField="Dsuper" HeaderText="部门主管" SortExpression="Dsuper" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]">
        </asp:SqlDataSource>
    </div>
</asp:Content>
