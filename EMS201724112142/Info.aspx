<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="EMS201724112142.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;margin-top:50px;height:480px;font-size:1.5em">
        <br /><br />
        <div style="margin-left:31%;font-size:0.8em">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#724D68" GridLines="None" Height="50px" Width="55%" CssClass="auto-style1">
                <AlternatingRowStyle BackColor="#FFF4FF" ForeColor="#5C3F54" />
                <CommandRowStyle BackColor="#b9a0b2" Font-Bold="True" />
                <EditRowStyle BackColor="#FFF4FF" />
                <FieldHeaderStyle BackColor="#E2D8DF" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="您的编号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="password" HeaderText="您的密码" SortExpression="password" />
                    <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" ReadOnly="True" />
                    <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                    <asp:BoundField DataField="Did" HeaderText="部门代号" SortExpression="Did" ReadOnly="True" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#FFD7FF" Font-Bold="True" ForeColor="#724d68" />
                <HeaderStyle BackColor="#b9a0b2" Font-Bold="false"/>
                <PagerStyle BackColor="#FFD7FF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFE6FF" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [password], [name], [phone], [Did] FROM [Employee] WHERE ([id] = @id)" UpdateCommand="UPDATE [Employee] SET [password] = @password, [phone] = @phone  WHERE [id] = @id">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="ID" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="Did" Type="String" />
                    <asp:Parameter Name="id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
