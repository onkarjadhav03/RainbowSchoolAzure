<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="RainbowSchool.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2  class="text-center">Subject Page<table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SubjectID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" ReadOnly="True" SortExpression="SubjectID" />
                        <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolConnectionString2 %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectID] = @original_SubjectID AND [SubjectName] = @original_SubjectName" InsertCommand="INSERT INTO [Subjects] ([SubjectID], [SubjectName]) VALUES (@SubjectID, @SubjectName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [SubjectName] = @SubjectName WHERE [SubjectID] = @original_SubjectID AND [SubjectName] = @original_SubjectName">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SubjectID" Type="Int32" />
                        <asp:Parameter Name="SubjectName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SubjectName" Type="String" />
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
    </h2>
</asp:Content>
