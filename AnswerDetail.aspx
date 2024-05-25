<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="AnswerDetail.aspx.vb" Inherits="AnswerDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="app-main__inner">

        <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>




        <div class="tab-content">
            <div class="tab-pane tabs-animation fade active show" id="tab-content-0" role="tabpanel">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Answers of Try </h5>



                                <div class="row">

                                    <div class="col-md-12">

                                        <asp:GridView ID="GridView3" class="align-middle mb-0 table table-borderless table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />


                                                <asp:BoundField DataField="QuastionID" HeaderText="Quastion ID" SortExpression="QuastionID" />




                                                <asp:BoundField DataField="QuestionTest" HeaderText="Question" SortExpression="QuestionTest" />
                                                <asp:BoundField DataField="User_Answer" HeaderText="Answer" SortExpression="User_Answer" />
                                                <asp:BoundField DataField="TimeToAnswer" HeaderText="Time To Answer" SortExpression="TimeToAnswer" />




                                                <asp:BoundField DataField="AnswerScore" HeaderText="Answer Score" SortExpression="AnswerScore" />




                                            </Columns>
                                        </asp:GridView>





                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT ANSWERS_TABLE.indexID, ANSWERS_TABLE.QuastionID, GENERAL_QUASTIONS_TABLE.QuestionTest, ANSWERS_TABLE.User_Answer, ANSWERS_TABLE.TimeToAnswer, ANSWERS_TABLE.AnswerScore FROM ANSWERS_TABLE INNER JOIN GENERAL_QUASTIONS_TABLE ON ANSWERS_TABLE.QuastionID = GENERAL_QUASTIONS_TABLE.indexID WHERE (ANSWERS_TABLE.TrainID = @Param1) AND (ANSWERS_TABLE.UserID = @Param2)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="ID" />
                                                <asp:SessionParameter DefaultValue="0" Name="Param2" SessionField="userID" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>





                                    </div>



                                </div>





                            </div>
                        </div>
                    </div>

                </div>







                <div class="row">
                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                        <div class="card-body">
                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Upload New Video</h5>

                            <div class="col-md-12">

                                    <div id="div_vidoe" runat="server" >


                                            </div>



                            </div>





                        </div>
                    </div>

                </div>















            </div>

        </div>



    </div>
</asp:Content>