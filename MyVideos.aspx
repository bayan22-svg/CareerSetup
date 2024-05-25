<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="MyVideos.aspx.vb" Inherits="MyVideos" %>

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

                                                              
                                                            
                                                            
                                                                <asp:BoundField DataField="TrainPosition" HeaderText="Training Position" SortExpression="TrainPosition" />
                                                                <asp:BoundField DataField="TrainDatetime" HeaderText="Date " SortExpression="TrainDatetime" />
<%--                                                                <asp:BoundField DataField="VideoName" HeaderText="Video Name" SortExpression="VideoName" />--%>

                                                              
                                                            
                                                            
                                                            </Columns>
                                                        </asp:GridView>





                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [TrainingTitle], [TrainPosition], [TrainDatetime], [VideoName] FROM [User_Training_Table] WHERE (([IsConfirm] = @IsConfirm) AND ([UserID] = @UserID))">
                                                            <SelectParameters>
                                                                <asp:Parameter DefaultValue="0" Name="IsConfirm" Type="Int32" />
                                                                <asp:SessionParameter DefaultValue="0" Name="UserID" SessionField="userID" Type="String" />
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
                                         <label>Name of Try </label>
                                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TrainingTitle" DataValueField="indexID"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [TrainingTitle] FROM [User_Training_Table] WHERE (([IsConfirm] = @IsConfirm) AND ([UserID] = @UserID))">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="IsConfirm" Type="Int32" />
                                                    <asp:SessionParameter DefaultValue="0" Name="UserID" SessionField="userID" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
<%--                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                        </div>


                                         <div class="col-md-12">
                                             <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:Button ID="Button2" runat="server" Text="Save" />

                                            </div>


                                    </div>
                                </div>

                            </div>



                            











                        </div>

                    </div>



    </div>
</asp:Content>
