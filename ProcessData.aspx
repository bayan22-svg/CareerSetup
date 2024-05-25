<%@ Page Title="" Language="C#" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="true" CodeFile="ProcessData.aspx.cs" Inherits="ProcessData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="app-main__inner">

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />

        <%--   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>

        <asp:Button ID="Button1" runat="server" Text="Process Data" OnClick="Button1_Click" />


        <div class="tab-content">
            <div class="tab-pane tabs-animation fade active show" id="tab-content-0" role="tabpanel">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                            <div class="card-body">
                                <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">My Videos</h5>



                                <div class="row">

                                    <div class="col-md-12">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:GridView ID="GridView3" class="align-middle mb-0 table table-borderless table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="indexID" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="indexID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="indexID" />


                                                <asp:BoundField DataField="VideoTitle" HeaderText="Video Title" SortExpression="VideoTitle" />
                                                <asp:BoundField DataField="VideoName" HeaderText="FileName" SortExpression="VideoName" />

<%--                                                 <asp:BoundField DataField="TimeToAnswer" HeaderText="Time To Answer" SortExpression="TimeToAnswer" />--%>


                                                <asp:TemplateField HeaderText="Answer">
                                                    <HeaderStyle BackColor="Silver" ForeColor="Maroon" />
                                                    <ItemStyle Font-Bold="True" ForeColor="#364B55" />
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txt_1" runat="server" class="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txt_1" runat="server" class="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>

                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>





                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>" SelectCommand="SELECT [indexID], [VideoName], [VideoTitle] FROM [Videos_Table] WHERE ([UserID] = @UserID)">
                                            <SelectParameters>
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
                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;"></h5>
                            <asp:Button ID="Button2" runat="server" Text="Make Test" OnClick="Button2_Click" />




                        </div>
                    </div>

                </div>















            </div>

        </div>



    </div>
</asp:Content>