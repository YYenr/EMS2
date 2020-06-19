<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vperson.aspx.cs" Inherits="EMS201724112142.Vperson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--VIP人员管理-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="Person_Manage" runat="server" Text="人员操作"  class="btn btn-light" OnClick="Person_Manage_Click"/>
        <asp:Button ID="Person_Search" runat="server" Text="人员查询"  class="btn btn-light" OnClick="Person_Search_Click"/>
        <asp:Button ID="Person_Count" runat="server" Text="人员统计"  class="btn btn-light" OnClick="Person_Count_Click"/>
        <br /><br /><br />
        <asp:Label ID="Label1" runat="server" BackColor="#B9A0B2" BorderColor="#FFD0FF" BorderStyle="Dashed" BorderWidth="2px" Font-Bold="True" ForeColor="#5C3F54" Visible="False" Width="30%"></asp:Label>
        <div style="text-align:center;margin-left:15%">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="80%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" >
                    <ItemStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                    <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                    <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                    <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                    <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" />
                    <ItemStyle Wrap="False" />
                    </asp:CommandField>
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="插入" >
                    <ControlStyle BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" />
                    </asp:ButtonField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="text-align:center;margin-left:32%">
                        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="48%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="None">
                        <CommandRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <EditRowStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:DetailsView>
                    </div>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [id] = @id" InsertCommand="INSERT INTO [Employee] ([id], [password], [name], [phone], [isManager], [Did]) VALUES (@id, @password, @name, @phone, @isManager, @Did)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [password] = @password, [name] = @name, [phone] = @phone, [isManager] = @isManager, [Did] = @Did WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="isManager" Type="String" />
                    <asp:Parameter Name="Did" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="isManager" Type="String" />
                    <asp:Parameter Name="Did" Type="String" />
                    <asp:Parameter Name="id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
