<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="My_Tries.aspx.vb" Inherits="My_Tries" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="app-main__inner">

        <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>




        <div class="tab-content">
            <div class="tab-pane tabs-animation fade active show" id="tab-content-0" role="tabpanel">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">My Previous Tries</h5>



                                <div class="row">

                                    <div class="col-md-12">

                                        <asp:GridView ID="GridView3" class="align-middle mb-0 table table-borderless table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />
                                                <asp:BoundField DataField="TrainingTitle" HeaderText="Training Title" SortExpression="TrainingTitle" />
                                                <asp:BoundField DataField="TrainPosition" HeaderText="Position" SortExpression="TrainPosition" />
                                                <asp:BoundField DataField="TrainDatetime" HeaderText="Date" SortExpression="TrainDatetime" />
                                                <asp:BoundField DataField="TrainingTime" HeaderText="Time" SortExpression="TrainingTime" />
                                                <asp:BoundField DataField="TrainScore" HeaderText="Score" SortExpression="TrainScore" />
                                              <%--  <asp:BoundField DataField="VideoName" HeaderText="VideoName" SortExpression="VideoName" />--%>

                                                   <asp:TemplateField HeaderText="View">
                                                <ItemTemplate>
                                                    <a href="AnswerDetail.aspx?ID=<%# Eval("indexID").ToString%>"  style="color: blue">View</a>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            </Columns>
                                        </asp:GridView>

                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [TrainingTitle], [TrainPosition], [TrainDatetime], [TrainingTime], [TrainScore], [VideoName] FROM [User_Training_Table] WHERE (([IsConfirm] = @IsConfirm) AND ([UserID] = @UserID))">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="1" Name="IsConfirm" Type="Int32" />
                                                <asp:SessionParameter DefaultValue="0" Name="UserID" SessionField="userID" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>





                                    </div>



                                </div>





                            </div>
                        </div>
                    </div>

                </div>





            </div>

        </div>



    </div>
</asp:Content>
