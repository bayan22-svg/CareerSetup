<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="GeneralQuestions.aspx.vb" Inherits="GeneralQuestions" %>

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
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">General Questions</h5>









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
                                                    <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                    <asp:BoundField DataField="QuastionID" HeaderText="QuastionI D" SortExpression="QuastionID" />
                                                    <asp:BoundField DataField="QuestionTest" HeaderText="Question Text" SortExpression="QuestionTest" />
                                                    <asp:BoundField DataField="User_Answer" HeaderText="User Answer" SortExpression="User_Answer" />


                                                         <asp:BoundField DataField="TimeToAnswer" HeaderText="Time To Answer" SortExpression="TimeToAnswer" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                DeleteCommand="DELETE FROM [UsersExperianceTable] WHERE [indexID] = @original_indexID " InsertCommand="INSERT INTO [UsersExperianceTable] ([ExperianceName], [ExperianceYears]) VALUES (@ExperianceName, @ExperianceYears)" 
                                                OldValuesParameterFormatString="original_{0}"
                                                SelectCommand="SELECT ANSWERS_TABLE.TimeToAnswer , ANSWERS_TABLE.indexID, ANSWERS_TABLE.QuastionID, GENERAL_QUASTIONS_TABLE.QuestionTest, ANSWERS_TABLE.User_Answer FROM GENERAL_QUASTIONS_TABLE INNER JOIN ANSWERS_TABLE ON GENERAL_QUASTIONS_TABLE.indexID = ANSWERS_TABLE.QuastionID WHERE (ANSWERS_TABLE.UserID = @Param1)" UpdateCommand="UPDATE [UsersExperianceTable] SET [ExperianceName] = @ExperianceName, [ExperianceYears] = @ExperianceYears WHERE [indexID] = @original_indexID AND (([ExperianceName] = @original_ExperianceName) OR ([ExperianceName] IS NULL AND @original_ExperianceName IS NULL)) AND (([ExperianceYears] = @original_ExperianceYears) OR ([ExperianceYears] IS NULL AND @original_ExperianceYears IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="ExperianceName" Type="String" />
                                                    <asp:Parameter Name="ExperianceYears" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter DefaultValue="0" Name="Param1" SessionField="userID" />
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



                            <div class="row">
                                <div class="col-md-12">
                                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                                        <div class="card-body">
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Re Answer Questions</h5>


                                            <div class="col-md-12">
                                                <asp:GridView ID="GridView2" class="align-middle mb-0 table table-borderless table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource2">
                                                    <Columns>
                                                        <asp:BoundField DataField="indexID" HeaderText="indexID" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                        <asp:BoundField DataField="QuestionTest" HeaderText="QuestionTest" SortExpression="QuestionTest" />
                                                        <asp:TemplateField HeaderText="Answer">
                                                            <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                            <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="txt_1" runat="server" class="form-control"></asp:TextBox>

                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txt_1" runat="server" class="form-control"></asp:TextBox>

                                                            </ItemTemplate>
                                                        </asp:TemplateField>






                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [QuestionTest] FROM [GENERAL_QUASTIONS_TABLE] ORDER BY [orderID]"></asp:SqlDataSource>
                                            </div>

                                            <asp:Button ID="Button1" runat="server" Text="Save Answers" />




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
