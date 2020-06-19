<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vequip.aspx.cs" Inherits="EMS201724112142.Vequip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--VIP设备管理-->
    <div style="text-align:center;margin-top:50px;font-size:1.2em">
        <asp:Button ID="Equip_Manage" runat="server" Text="设备操作"  class="btn btn-light" OnClick="Equip_Manage_Click"/>
        <asp:Button ID="Equip_Search" runat="server" Text="设备查询"  class="btn btn-light" OnClick="Equip_Search_Click"/>
        <br />
        <br />
        <div style="text-align:center;margin-left:35%">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Equipment] WHERE [Eid] = @Eid" InsertCommand="INSERT INTO [Equipment] ([Eid], [Ename], [Esize], [Epic], [Eprice], [Edate], [Eplace], [manager]) VALUES (@Eid, @Ename, @Esize, @Epic, @Eprice, @Edate, @Eplace, @manager)" SelectCommand="SELECT * FROM [Equipment]" UpdateCommand="UPDATE [Equipment] SET [Ename] = @Ename, [Esize] = @Esize, [Epic] = @Epic, [Eprice] = @Eprice, [Edate] = @Edate, [Eplace] = @Eplace, [manager] = @manager WHERE [Eid] = @Eid">
            <DeleteParameters>
                <asp:Parameter Name="Eid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Eid" Type="String" />
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="Esize" Type="String" />
                <asp:Parameter Name="Epic" Type="String" />
                <asp:Parameter Name="Eprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="Edate" />
                <asp:Parameter Name="Eplace" Type="String" />
                <asp:Parameter Name="manager" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="Esize" Type="String" />
                <asp:Parameter Name="Epic" Type="String" />
                <asp:Parameter Name="Eprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="Edate" />
                <asp:Parameter Name="Eplace" Type="String" />
                <asp:Parameter Name="manager" Type="String" />
                <asp:Parameter Name="Eid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="43%" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#DEDFDE" Font-Bold="False" ForeColor="Black" BorderColor="#D8D8D8" BorderStyle="Solid" HorizontalAlign="Left" VerticalAlign="Middle" Font-Italic="False" Font-Underline="False" BorderWidth="2px" />
            <Fields>
                <asp:BoundField DataField="Eid" HeaderText="编号" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="名称" SortExpression="Ename" />
                <asp:BoundField DataField="Esize" HeaderText="规格" SortExpression="Esize" />
                <asp:BoundField DataField="Eprice" HeaderText="价格" SortExpression="Eprice" />
                <asp:BoundField DataField="Edate" HeaderText="购入日期" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" SortExpression="Edate" />
                <asp:BoundField DataField="Eplace" HeaderText="存放位置" SortExpression="Eplace" />
                <asp:BoundField DataField="manager" HeaderText="负责人编号" SortExpression="manager" />
                <asp:ImageField DataAlternateTextField="Epic" DataImageUrlField="Epic" NullImageUrl="~/img/002.png" HeaderText="设备图片">
                 </asp:ImageField>
                <asp:TemplateField ShowHeader="False" Visible="True">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" BorderWidth="2px" /> 
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" BackColor="White" BorderColor="#FFE8FF" BorderStyle="Dashed" BorderWidth="2px"/> 
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" >
                <ControlStyle BackColor="White" BorderColor="#FDE8FF" BorderStyle="Dashed" BorderWidth="2px" Font-Size="15px" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#9900CC" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="X-Large" />
            <PagerStyle BackColor="#724D68" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
            <br />
        </div>
    </div>
</asp:Content>
