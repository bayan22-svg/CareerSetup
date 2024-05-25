<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="Qualification.aspx.vb" Inherits="Qualification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="app-main__inner">

        <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset>



                    <div class="tab-content">
                        <div class="tab-pane tabs-animation fade active show" id="tab-content-0" role="tabpanel">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                        <div class="card-body">
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Qualifications</h5>




                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Qualification Name</label>
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>

                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Grade Year</label>
                                                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Grade</label>
                                                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>

                                            </div>


                                            <asp:Button ID="Button1" runat="server" class="mt-1 btn btn-primary" Text="Add " Style="float: left;" />


                                        </div>
                                    </div>
                                </div>

                            </div>







                            <div class="row">
                                <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                    <div class="card-body">
                                        <div class="col-md-12">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource1" class="align-middle mb-0 table table-borderless table-striped table-hover">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" />
                                                    <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                    <asp:BoundField DataField="QualificationName" HeaderText="Qualificatio nName" SortExpression="QualificationName" />
                                                    <asp:BoundField DataField="GradeYears" HeaderText="Grade Years" SortExpression="GradeYears" />
                                                    <asp:BoundField DataField="Grades" HeaderText="Grades" SortExpression="Grades" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                DeleteCommand="DELETE FROM [UsersQualificationsTable] WHERE [indexID] = @original_indexID " InsertCommand="INSERT INTO [UsersQualificationsTable] ([QualificationName], [GradeYears], [Grades]) VALUES (@QualificationName, @GradeYears, @Grades)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [indexID], [QualificationName], [GradeYears], [Grades] FROM [UsersQualificationsTable] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [UsersQualificationsTable] SET [QualificationName] = @QualificationName, [GradeYears] = @GradeYears, [Grades] = @Grades WHERE [indexID] = @original_indexID AND (([QualificationName] = @original_QualificationName) OR ([QualificationName] IS NULL AND @original_QualificationName IS NULL)) AND (([GradeYears] = @original_GradeYears) OR ([GradeYears] IS NULL AND @original_GradeYears IS NULL)) AND (([Grades] = @original_Grades) OR ([Grades] IS NULL AND @original_Grades IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_QualificationName" Type="String" />
                                                    <asp:Parameter Name="original_GradeYears" Type="String" />
                                                    <asp:Parameter Name="original_Grades" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="QualificationName" Type="String" />
                                                    <asp:Parameter Name="GradeYears" Type="String" />
                                                    <asp:Parameter Name="Grades" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter DefaultValue="0" Name="UserName" SessionField="userID" Type="String" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="QualificationName" Type="String" />
                                                    <asp:Parameter Name="GradeYears" Type="String" />
                                                    <asp:Parameter Name="Grades" Type="String" />
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_QualificationName" Type="String" />
                                                    <asp:Parameter Name="original_GradeYears" Type="String" />
                                                    <asp:Parameter Name="original_Grades" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>

                                    </div>
                                </div>

                            </div>














                        </div>

                    </div>


                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>


    </div>
</asp:Content>
