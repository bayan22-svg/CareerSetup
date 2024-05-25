<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="Personal_Question.aspx.vb" Inherits="Personal_Question" %>


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
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Personality test</h5>




                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue"> Question NAme</label>
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>

                                            </div>
                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue"> Question Type</label>
                                                <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control" AutoPostBack="true" >

                                                    <asp:ListItem >Openness</asp:ListItem>

                                                     <asp:ListItem >Conscientiousness</asp:ListItem>
                                                    <asp:ListItem>Extroversion</asp:ListItem>
                                                    <asp:ListItem>Agreeableness</asp:ListItem>
                                                    <asp:ListItem>Neuroticism</asp:ListItem>
                                                </asp:DropDownList>

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
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="indexID" HeaderText="indexID" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                    <asp:BoundField DataField="QuestionText" HeaderText="QuestionText" SortExpression="QuestionText" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                DeleteCommand="DELETE FROM [PERSONAL_QUESTIONS_TABLE] WHERE [indexID] = @original_indexID "
                                                InsertCommand="INSERT INTO [PERSONAL_QUESTIONS_TABLE] ([QuestionText]) VALUES (@QuestionText)"
                                                OldValuesParameterFormatString="original_{0}" 
                                                SelectCommand="SELECT [indexID], [QuestionText] FROM [PERSONAL_QUESTIONS_TABLE] WHERE ([QuestionType] = @QuestionType)" 
                                                UpdateCommand="UPDATE [PERSONAL_QUESTIONS_TABLE] SET [QuestionText] = @QuestionText WHERE [indexID] = @original_indexID ">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_QuestionText" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="QuestionText" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="QuestionType" PropertyName="SelectedValue" Type="String" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="QuestionText" Type="String" />
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_QuestionText" Type="String" />
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
