<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sequip.aspx.cs" Inherits="EMS201724112142.Seqp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--显示所有设备-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="All_Equip" runat="server" Text="显示全部设备" OnClick="All_Equip_Click" class="btn btn-light"/>
        <asp:Button ID="Search_Equip" runat="server" Text="按条件查询设备" OnClick="Search_Equip_Click" class="btn btn-light"/>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" width="85%" Height="150px" HorizontalAlign="Center"  AllowPaging="True" AllowSorting="True" PageSize="5" GridLines="None">
            <Columns>                
                <asp:BoundField DataField="Eid" HeaderText="设备编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="设备名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="设备规格" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" HeaderText="购入日期" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置" />
                <asp:BoundField DataField="name" HeaderText="设备负责人" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name FROM Equipment INNER JOIN Employee ON Equipment.manager = Employee.id">
        </asp:SqlDataSource>
    </div>
</asp:Content>
