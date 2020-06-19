<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sperson2.aspx.cs" Inherits="EMS201724112142.Sperson2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--按条件查询人员-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em;">
        <asp:Button ID="All_Sper" runat="server" Text="显示所有人员" UseSubmitBehavior="False" class="btn btn-light" OnClick="All_Sper_Click"/>
        <asp:Button ID="Search_Sper" runat="server" Text="按条件查询人员" class="btn btn-light" UseSubmitBehavior="False" OnClick="Search_Sper_Click"/>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" OnTextChanged="Search_Click">
            <asp:ListItem Value="id">人员编号</asp:ListItem>
            <asp:ListItem Value="name">姓名</asp:ListItem>
            <asp:ListItem Value="phone">联系电话</asp:ListItem>
            <asp:ListItem Value="ism">是否管理员</asp:ListItem>
            <asp:ListItem Value="did">部门代号</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
            <asp:TextBox ID="Info" runat="server"  placeholder="请输入要查询的信息" Font-Size="Medium" BorderColor="#FF99FF" BorderStyle="Dotted" Height="35px"></asp:TextBox>
            <asp:Button ID="Search" runat="server" Text="查询" OnClick="Search_Click" class="btn btn-light"/>
            <br />
            <asp:Label ID="Info_id" runat="server"></asp:Label>
            <asp:Label ID="Info_name" runat="server"></asp:Label>
            <asp:Label ID="Info_phone" runat="server"></asp:Label>
            <asp:Label ID="Info_ism" runat="server"></asp:Label>
            <asp:Label ID="Info_did" runat="server"></asp:Label><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, name, phone, isManager, Did FROM Employee WHERE (id LIKE '%' + @Info_id + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_id" Name="Info_id" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
                        <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
                        <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, name, phone, isManager, Did FROM Employee WHERE (name LIKE '%' + @Info_name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_name" Name="Info_name" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, name, phone, isManager, Did FROM Employee WHERE (phone LIKE '%' + @Info_phone + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_phone" Name="Info_phone" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, name, phone, isManager, Did FROM Employee WHERE (isManager LIKE '%' + @Info_ism + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_ism" Name="Info_ism" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="人员编号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="联系电话" SortExpression="phone" />
                <asp:BoundField DataField="isManager" HeaderText="是否为管理员" SortExpression="isManager" />
                <asp:BoundField DataField="Did" HeaderText="所在部门代号" SortExpression="Did" />
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT id, name, phone, isManager, Did FROM Employee WHERE (Did LIKE '%' + @Info_did + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_did" Name="Info_did" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
