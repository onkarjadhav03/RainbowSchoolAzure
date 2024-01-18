<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="RainbowSchool.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2  class="text-center">Student Page<table class="w-100">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="ClassID" HeaderText="ClassID" SortExpression="ClassID" />
                        <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" SortExpression="SubjectID" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([SubjectID] = @original_SubjectID) OR ([SubjectID] IS NULL AND @original_SubjectID IS NULL))" InsertCommand="INSERT INTO [Student] ([StudentID], [FirstName], [LastName], [ClassID], [SubjectID]) VALUES (@StudentID, @FirstName, @LastName, @ClassID, @SubjectID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [FirstName] = @FirstName, [LastName] = @LastName, [ClassID] = @ClassID, [SubjectID] = @SubjectID WHERE [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([SubjectID] = @original_SubjectID) OR ([SubjectID] IS NULL AND @original_SubjectID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="SubjectID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="SubjectID" Type="Int32" />
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_SubjectID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</h2>
</asp:Content>
