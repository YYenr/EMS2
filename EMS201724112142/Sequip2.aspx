<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sequip2.aspx.cs" Inherits="EMS201724112142.SSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--按条件查询设备（一般）-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em;">
        <asp:Button ID="All_Equip" runat="server" Text="显示全部设备" OnClick="All_Equip_Click" UseSubmitBehavior="False" class="btn btn-light" />
        <asp:Button ID="Search_Equip" runat="server" Text="按条件查询设备" OnClick="Search_Equip_Click" UseSubmitBehavior="False" Width="137px" class="btn btn-light"/>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" OnTextChanged="Search_Click">
            <asp:ListItem Value="sid">设备编号</asp:ListItem>
            <asp:ListItem Value="sname">设备名称</asp:ListItem>
            <asp:ListItem Value="sdate">购入日期</asp:ListItem>
            <asp:ListItem Value="splace">存放位置</asp:ListItem>
            <asp:ListItem Value="mname">设备负责人姓名</asp:ListItem>
            <asp:ListItem Value="dname">部门名称</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
            <asp:TextBox ID="Info" runat="server"  placeholder="请输入要查询的信息" Font-Size="Medium" BorderColor="#FF99FF" BorderStyle="Dotted" Height="35px"></asp:TextBox>
            <asp:Button ID="Search" runat="server" Text="查询" OnClick="Search_Click" class="btn btn-light"/>
            <br />
            <asp:Label ID="Info_id" runat="server"></asp:Label>
            <asp:Label ID="Info_sname" runat="server"></asp:Label>
            <asp:Label ID="Info_date" runat="server"></asp:Label>
            <asp:Label ID="Info_place" runat="server" ></asp:Label>
            <asp:Label ID="Info_mname" runat="server"></asp:Label>
            <asp:Label ID="Info_dname" runat="server" ></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="85%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置"  SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
                        <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name, Department.Dname FROM Equipment INNER JOIN Employee ON Equipment.manager = Employee.id INNER JOIN Department ON Employee.Did = Department.Did WHERE (Equipment.Eid LIKE '%' + @Info_id + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_id" Name="Info_id" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style1" GridLines="None" Height="150px" Width="85%" HorizontalAlign="Center"> 
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置" SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
                        <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name, Department.Dname FROM Department INNER JOIN Employee ON Department.Did = Employee.Did INNER JOIN Equipment ON Employee.id = Equipment.manager WHERE (Equipment.Ename LIKE '%' + @Info_sname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_sname" Name="Info_sname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="85%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置"  SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name, Department.Dname FROM Department INNER JOIN Employee ON Department.Did = Employee.Did INNER JOIN Equipment ON Employee.id = Equipment.manager WHERE (Equipment.Edate LIKE '%' + @Info_date + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_date" Name="Info_date" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="85%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置"  SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name, Department.Dname FROM Department INNER JOIN Employee ON Department.Did = Employee.Did INNER JOIN Equipment ON Employee.id = Equipment.manager WHERE (Equipment.Eplace LIKE '%' + @Info_place + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_place" Name="Info_place" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="150px" Width="85%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置" SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Employee.name, Department.Dname, Equipment.Eplace FROM Department INNER JOIN Employee ON Department.Did = Employee.Did INNER JOIN Equipment ON Employee.id = Equipment.manager WHERE (Employee.name LIKE '%' + @Info_mname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_mname" Name="Info_mname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource6" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="85%" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置" SortExpression="Eplace" />
                <asp:BoundField DataField="name" HeaderText="负责人姓名" SortExpression="name" />
                <asp:BoundField DataField="Dname" HeaderText="负责部门" SortExpression="Dname" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" HeaderText="设备图片">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#b9a0b2" ForeColor="Black" />
            <HeaderStyle BackColor="#b9a0b2" Font-Bold="True" ForeColor="#724d68" font-size="Large" HorizontalAlign="Center" VerticalAlign="Middle"/>
            <PagerStyle BackColor="#C6C3C6" ForeColor="#724d68" HorizontalAlign="Right" BorderColor="#003366" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" font-size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="None"/>
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Equipment.Eid, Equipment.Ename, Equipment.Esize, Equipment.Epic, Equipment.Eprice, Equipment.Edate, Equipment.Eplace, Employee.name, Department.Dname FROM Department INNER JOIN Employee ON Department.Did = Employee.Did INNER JOIN Equipment ON Employee.id = Equipment.manager WHERE (Department.Dname LIKE '%' + @Info_dname + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Info_dname" Name="Info_dname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
