<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="RainbowSchool.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Classes Page<table class="w-100">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ClassID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ClassID" HeaderText="ClassID" ReadOnly="True" SortExpression="ClassID" />
                    <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolConnectionString3 %>" DeleteCommand="DELETE FROM [Classes] WHERE [ClassID] = @original_ClassID AND [ClassName] = @original_ClassName" InsertCommand="INSERT INTO [Classes] ([ClassID], [ClassName]) VALUES (@ClassID, @ClassName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName WHERE [ClassID] = @original_ClassID AND [ClassName] = @original_ClassName">
                <DeleteParameters>
                    <asp:Parameter Name="original_ClassID" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ClassID" Type="Int32" />
                    <asp:Parameter Name="ClassName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ClassName" Type="String" />
                    <asp:Parameter Name="original_ClassID" Type="Int32" />
                    <asp:Parameter Name="original_ClassName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</h2>
</asp:Content>
