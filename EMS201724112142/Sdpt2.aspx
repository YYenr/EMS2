<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sdpt2.aspx.cs" Inherits="EMS201724112142.Sdpt2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--按条件查询部门-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em;">
        <asp:Button ID="All_Sdpt" runat="server" Text="显示所有部门" OnClick="All_Sdpt_Click" UseSubmitBehavior="False" class="btn btn-light"/>
        <asp:Button ID="Search_Sdpt" runat="server" Text="按条件查询部门" class="btn btn-light" UseSubmitBehavior="False" OnClick="Search_Sdpt_Click"/>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" OnTextChanged="Search_Click">
            <asp:ListItem Value="did">部门代号</asp:ListItem>
            <asp:ListItem Value="dname">部门名称</asp:ListItem>
            <asp:ListItem Value="dsuper">部门主管</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
            <asp:TextBox ID="Info" runat="server"  placeholder="请输入要查询的信息" Font-Size="Medium" BorderColor="#FF99FF" BorderStyle="Dotted" Height="35px"></asp:TextBox>
            <asp:Button ID="Search" runat="server" Text="查询" OnClick="Search_Click" class="btn btn-light"/>
            <br />
            <asp:Label ID="Info_did" runat="server"></asp:Label>
            <asp:Label ID="Info_dname" runat="server"></asp:Label>
            <asp:Label ID="Info_dsuper" runat="server"></asp:Label><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Did, Dname, Dsuper FROM Department WHERE (Did LIKE '%' + @Info_did + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_did" Name="Info_did" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
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
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Did, Dname, Dsuper FROM Department WHERE (Dname LIKE '%' + @Info_dname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_dname" Name="Info_dname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Did" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="50%" HorizontalAlign="Center">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Did, Dname, Dsuper FROM Department WHERE (Dsuper LIKE '%' + @Info_dsuper + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_dsuper" Name="Info_dsuper" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
