<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vdept.aspx.cs" Inherits="EMS201724112142.Vdept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--VIP部门管理-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="Dept_Manage" runat="server" Text="部门操作"  class="btn btn-light" OnClick="Dept_Manage_Click"/>
        <asp:Button ID="Dept_Search" runat="server" Text="部门查询"  class="btn btn-light" OnClick="Dept_Search_Click"/>
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div style="text-align:center;margin-left:28%">
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource1" Width="65%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="Did" HeaderText="部门代号" ReadOnly="True" SortExpression="Did" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Dname" HeaderText="部门名称" SortExpression="Dname" />
                    <asp:BoundField DataField="Dsuper" HeaderText="部门主管" SortExpression="Dsuper" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" />
                    <ItemStyle Wrap="False" />
                    </asp:CommandField>
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="插入" >
                    <ControlStyle BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" />
                    </asp:ButtonField>
                </Columns>
                <EmptyDataTemplate>
                    <div style="text-align:center;margin-left:28%">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Did] = @Did" InsertCommand="INSERT INTO [Department] ([Did], [Dname], [Dsuper]) VALUES (@Did, @Dname, @Dsuper)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dname] = @Dname, [Dsuper] = @Dsuper WHERE [Did] = @Did">
                <DeleteParameters>
                    <asp:Parameter Name="Did" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Did" Type="String" />
                    <asp:Parameter Name="Dname" Type="String" />
                    <asp:Parameter Name="Dsuper" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Dname" Type="String" />
                    <asp:Parameter Name="Dsuper" Type="String" />
                    <asp:Parameter Name="Did" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
