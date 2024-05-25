﻿<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="CoursesTraining.aspx.vb" Inherits="CoursesTraining" %>

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
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Training</h5>




                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Course Name</label>
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>

                                            </div>


                                               <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Address</label>
                                                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

                                            </div>



                                               <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue">Years</label>
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
                                                    <asp:BoundField DataField="indexID" HeaderText="indexID" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                                                    <asp:BoundField DataField="CourseAddress" HeaderText="Course Address" SortExpression="CourseAddress" />
                                                    <asp:BoundField DataField="CourseYears" HeaderText="Course Years" SortExpression="CourseYears" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
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


                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>


    </div>
</asp:Content>
