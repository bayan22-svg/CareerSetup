<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="Basic-Informayion.aspx.vb" Inherits="Basic_Informayion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="app-main__inner">

        <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset>

                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a data-bs-toggle="tab" href="#tab-eg13-1" class="active nav-link">Basic Information  </a>
                        </li>
                        <li class="nav-item">
                            <a data-bs-toggle="tab" href="#tab-eg13-2" class="nav-link">Qualifications </a>
                        </li>
                        <li class="nav-item">
                            <a data-bs-toggle="tab" href="#tab-eg13-3" class="nav-link">Training </a>
                        </li>

                        <li class="nav-item">
                            <a data-bs-toggle="tab" href="#tab-eg13-4" class="nav-link">Experiances </a>
                        </li>
                        <li class="nav-item">
                            <a data-bs-toggle="tab" href="#tab_1" class="nav-link">personality </a>
                        </li>





                    </ul>


                    <div class="tab-content">

                        <div class="tab-content">



                            <div class="tab-pane" id="tab_1" role="tabpanel">

                                <div class="row">


                                    <div class="col-md-12" style="display: none">



                                        <label>Openness</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="TextBox14" runat="server" ReadOnly="true" CssClass="form-control" BackColor="WhiteSmoke"></asp:TextBox>


                                        </div>

                                        <label>Conscientiousness</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="TextBox15" runat="server" ReadOnly="true" CssClass="form-control" BackColor="WhiteSmoke"></asp:TextBox>


                                        </div>


                                        <label>Extroversion</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="TextBox16" runat="server" ReadOnly="true" CssClass="form-control" BackColor="WhiteSmoke"></asp:TextBox>


                                        </div>




                                        <label>Agreeableness</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="TextBox17" runat="server" ReadOnly="true" CssClass="form-control" BackColor="WhiteSmoke"></asp:TextBox>


                                        </div>



                                        <label>Neuroticism</label>
                                        <div class="col-md-12">

                                            <asp:TextBox ID="TextBox18" runat="server" ReadOnly="true" CssClass="form-control" BackColor="WhiteSmoke"></asp:TextBox>


                                        </div>
                                    </div>


                                    <div class="col-md-12">
                                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                            <div class="card-body">




                                                <asp:Button ID="Button5" runat="server" Text="Save" />


                                                <asp:GridView ID="GridView4" class="align-middle mb-0 table table-borderless table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource4">
                                                    <Columns>

                                                        <asp:BoundField DataField="indexID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                        <asp:BoundField DataField="QuestionType" HeaderText="Question Type" SortExpression="QuestionType" />
                                                        <asp:BoundField DataField="QuestionText" HeaderText="Question Text" SortExpression="QuestionText" />


                                                        <%--       <asp:TemplateField HeaderText="Agree Value(1)">
                                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                                            <EditItemTemplate>

                                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                                            </EditItemTemplate>
                                                                        
                                                                        </asp:TemplateField>--%>




                                                        <asp:TemplateField HeaderText="Agree Value ( 1 )">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>




                                                        <asp:TemplateField HeaderText="Agree Value ( 2)">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                              <asp:TemplateField HeaderText="Agree Value ( 3)">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                              <asp:TemplateField HeaderText="Agree Value ( 4)">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                              <asp:TemplateField HeaderText="Agree Value ( 5)">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:RadioButton ID="RadioButton1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                    </Columns>
                                                </asp:GridView>



                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [QuestionText], [QuestionType] FROM [PERSONAL_QUESTIONS_TABLE] ORDER BY [QuestionType]"></asp:SqlDataSource>



                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>



                            <div class="tab-pane active" id="tab-eg13-1" role="tabpanel">
                                <div class="tab-pane tabs-animation fade active show" id="tab-content-0" role="tabpanel">

                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <fieldset>


                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                                            <div class="card-body">
                                                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Basic Information</h5>




                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Full Name</label>
                                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Address</label>
                                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Phone 1</label>
                                                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Phone 2</label>
                                                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">E-Mail</label>
                                                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>

                                                                </div>

                                                                <asp:Button ID="Button1" runat="server" class="mt-1 btn btn-primary" Text="Update " Style="float: left;" />


                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>





                                            </fieldset>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


















                                </div>
                            </div>


                            <div class="tab-pane" id="tab-eg13-2" role="tabpanel">

                                <div class="row">

                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <fieldset>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                                            <div class="card-body">
                                                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Qualifications</h5>




                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Qualification Name</label>
                                                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Grade Year</label>
                                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>

                                                                </div>
                                                                <div class="position-relative form-group">
                                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Grade</label>
                                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>

                                                                </div>


                                                                <asp:Button ID="Button2" runat="server" class="mt-1 btn btn-primary" Text="Add " Style="float: left;" />


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

                                            </fieldset>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>


                            <div class="tab-pane" id="tab-eg13-3" role="tabpanel">

                                <div class="row">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                                <div class="card-body">
                                                    <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Training</h5>




                                                    <div class="position-relative form-group">
                                                        <label for="exampleEmail" class="" style="float: left; color: blue">Course Name</label>
                                                        <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>

                                                    </div>


                                                    <div class="position-relative form-group">
                                                        <label for="exampleEmail" class="" style="float: left; color: blue">Address</label>
                                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>

                                                    </div>



                                                    <div class="position-relative form-group">
                                                        <label for="exampleEmail" class="" style="float: left; color: blue">Years</label>
                                                        <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>

                                                    </div>



                                                    <asp:Button ID="Button3" runat="server" class="mt-1 btn btn-primary" Text="Add " Style="float: left;" />


                                                </div>
                                            </div>
                                        </div>

                                    </div>



                                    <div class="row">
                                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                            <div class="card-body">
                                                <div class="col-md-12">
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource2" class="align-middle mb-0 table table-borderless table-striped table-hover">
                                                        <Columns>
                                                            <asp:CommandField ShowDeleteButton="True" />
                                                            <asp:BoundField DataField="indexID" HeaderText="indexID" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                                                            <asp:BoundField DataField="CourseAddress" HeaderText="Course Address" SortExpression="CourseAddress" />
                                                            <asp:BoundField DataField="CourseYears" HeaderText="Course Years" SortExpression="CourseYears" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                        DeleteCommand="DELETE FROM [UsersCoursesTable] WHERE [indexID] = @original_indexID " InsertCommand="INSERT INTO [UsersCoursesTable] ([CourseName], [CourseAddress], [CourseYears]) VALUES (@CourseName, @CourseAddress, @CourseYears)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [indexID], [CourseName], [CourseAddress], [CourseYears] FROM [UsersCoursesTable] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [UsersCoursesTable] SET [CourseName] = @CourseName, [CourseAddress] = @CourseAddress, [CourseYears] = @CourseYears WHERE [indexID] = @original_indexID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CourseAddress] = @original_CourseAddress) OR ([CourseAddress] IS NULL AND @original_CourseAddress IS NULL)) AND (([CourseYears] = @original_CourseYears) OR ([CourseYears] IS NULL AND @original_CourseYears IS NULL))">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="original_indexID" Type="Int32" />
                                                            <asp:Parameter Name="original_CourseName" Type="String" />
                                                            <asp:Parameter Name="original_CourseAddress" Type="String" />
                                                            <asp:Parameter Name="original_CourseYears" Type="String" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:Parameter Name="CourseName" Type="String" />
                                                            <asp:Parameter Name="CourseAddress" Type="String" />
                                                            <asp:Parameter Name="CourseYears" Type="String" />
                                                        </InsertParameters>
                                                        <SelectParameters>
                                                            <asp:SessionParameter DefaultValue="0" Name="UserName" SessionField="userID" Type="String" />
                                                        </SelectParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="CourseName" Type="String" />
                                                            <asp:Parameter Name="CourseAddress" Type="String" />
                                                            <asp:Parameter Name="CourseYears" Type="String" />
                                                            <asp:Parameter Name="original_indexID" Type="Int32" />
                                                            <asp:Parameter Name="original_CourseName" Type="String" />
                                                            <asp:Parameter Name="original_CourseAddress" Type="String" />
                                                            <asp:Parameter Name="original_CourseYears" Type="String" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </div>

                                            </div>
                                        </div>

                                    </div>





                                </div>



                            </div>


                            <div class="tab-pane" id="tab-eg13-4" role="tabpanel">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                            <div class="card-body">
                                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Experiances</h5>




                                                <div class="position-relative form-group">
                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Name</label>
                                                    <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox>

                                                </div>
                                                <div class="position-relative form-group">
                                                    <label for="exampleEmail" class="" style="float: left; color: blue">Years</label>
                                                    <asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>

                                                </div>



                                                <asp:Button ID="Button4" runat="server" class="mt-1 btn btn-primary" Text="Add " Style="float: left;" />


                                            </div>
                                        </div>
                                    </div>

                                </div>







                                <div class="row">
                                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                        <div class="card-body">
                                            <div class="col-md-12">
                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource3" class="align-middle mb-0 table table-borderless table-striped table-hover">
                                                    <Columns>
                                                        <asp:CommandField ShowDeleteButton="True" />
                                                        <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                        <asp:BoundField DataField="ExperianceName" HeaderText="Experiance Name" SortExpression="ExperianceName" />
                                                        <asp:BoundField DataField="ExperianceYears" HeaderText="Experiance Years" SortExpression="ExperianceYears" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                    DeleteCommand="DELETE FROM [UsersExperianceTable] WHERE [indexID] = @original_indexID " InsertCommand="INSERT INTO [UsersExperianceTable] ([ExperianceName], [ExperianceYears]) VALUES (@ExperianceName, @ExperianceYears)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [indexID], [ExperianceName], [ExperianceYears] FROM [UsersExperianceTable] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [UsersExperianceTable] SET [ExperianceName] = @ExperianceName, [ExperianceYears] = @ExperianceYears WHERE [indexID] = @original_indexID AND (([ExperianceName] = @original_ExperianceName) OR ([ExperianceName] IS NULL AND @original_ExperianceName IS NULL)) AND (([ExperianceYears] = @original_ExperianceYears) OR ([ExperianceYears] IS NULL AND @original_ExperianceYears IS NULL))">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_indexID" Type="Int32" />
                                                        <asp:Parameter Name="original_ExperianceName" Type="String" />
                                                        <asp:Parameter Name="original_ExperianceYears" Type="String" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="ExperianceName" Type="String" />
                                                        <asp:Parameter Name="ExperianceYears" Type="String" />
                                                    </InsertParameters>
                                                    <SelectParameters>
                                                        <asp:SessionParameter DefaultValue="0" Name="UserName" SessionField="userID" Type="String" />
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="ExperianceName" Type="String" />
                                                        <asp:Parameter Name="ExperianceYears" Type="String" />
                                                        <asp:Parameter Name="original_indexID" Type="Int32" />
                                                        <asp:Parameter Name="original_ExperianceName" Type="String" />
                                                        <asp:Parameter Name="original_ExperianceYears" Type="String" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </div>

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
