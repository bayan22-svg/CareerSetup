<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="AdminAddSpecification.aspx.vb" Inherits="AdminAddSpecification" %>



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
                                            <h5 class="card-title" style="text-align: center; color: maroon; font-size: 28px;">Specifications </h5>




                                            <div class="position-relative form-group">
                                                <label for="exampleEmail" class="" style="float: left; color: blue"> Specification Name</label>
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>

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
                                                    <asp:BoundField DataField="SpecificationName" HeaderText="SpecificationName" SortExpression="SpecificationName" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:System_ConnectionString %>"
                                                DeleteCommand="DELETE FROM [SpecificationsTable] WHERE [indexID] = @original_indexID AND (([SpecificationName] = @original_SpecificationName) OR ([SpecificationName] IS NULL AND @original_SpecificationName IS NULL))"
                                                InsertCommand="INSERT INTO [SpecificationsTable] ([SpecificationName]) VALUES (@SpecificationName)"
                                                OldValuesParameterFormatString="original_{0}" 
                                                SelectCommand="SELECT [indexID], [SpecificationName] FROM [SpecificationsTable]" 
                                                UpdateCommand="UPDATE [SpecificationsTable] SET [SpecificationName] = @SpecificationName WHERE [indexID] = @original_indexID AND (([SpecificationName] = @original_SpecificationName) OR ([SpecificationName] IS NULL AND @original_SpecificationName IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_SpecificationName" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="SpecificationName" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="SpecificationName" Type="String" />
                                                    <asp:Parameter Name="original_indexID" Type="Int32" />
                                                    <asp:Parameter Name="original_SpecificationName" Type="String" />
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
