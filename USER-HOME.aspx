<%@ Page Title="" Language="VB" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="false" CodeFile="USER-HOME.aspx.vb" Inherits="USER_HOME" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <script src="vendors/fullcalendar/main.js"></script>

    <link href="vendors/fullcalendar/main.css" rel="stylesheet" />

   


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script src="vendors/fullcalendar/main.js"></script>

    <link href="vendors/fullcalendar/main.css" rel="stylesheet" />

<%--    <asp:Timer ID="Timer1" runat="server"></asp:Timer>--%>



    

    <div class="app-main__inner">

             <div class="row" style="margin-bottom: 20px; border-bottom: 1px solid #ddd">
            <div class="col-md-4">

                <div class="widget-content-outer">
                    <div class="widget-content-wrapper">
                        <div class="widget-content-left">
                            <div class="widget-heading" style="text-align: center; font-size: 20px; color: red;">
                                <a href="#" style="color:blue">Training Tries Count</a>
                                <br />
                             <%--   <i class="fa fa-fw" aria-hidden="true" title="" style="color: red; font-size: 30px;"></i>--%>
                                
                            </div>

                        </div>
                        <div class="widget-content-right">
                            <div class="widget-numbers text-success" style="text-align: center; font-size: 20px;">
                                <%

                                    Dim TrainCount As Double
                                    Try
                                        Dim cc As New appicationoperation

                                        TrainCount = cc.executeScaler("SELECT COUNT(indexID) AS Expr1 FROM  User_Training_Table " &
                                                                      " GROUP BY UserID HAVING UserID = N'" & Session("userID") & "'")

                                        Response.Write(TrainCount)
                                    Catch ex As Exception

                                    End Try

                                %>
                            </div>
                        </div>
                    </div>
                    <div class="widget-progress-wrapper">
                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                            <%
                                Try

                                    Response.Write(" <div class='progress-bar bg-primary' role='progressbar' aria-valuenow='" & TrainCount & "' aria-valuemin='0' aria-valuemax='100' style='width: " & TrainCount & "%;background-color:green  !important'></div>")


                                Catch ex As Exception

                                End Try

                            %>
                            <%--     !important--%>
                            <%-- <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 93%;">--%>
                        </div>
                    </div>

                </div>

            </div>
            <div class="col-md-4">

                <div class="widget-content-outer">
                    <div class="widget-content-wrapper">
                        <div class="widget-content-left">
                            <div class="widget-heading" style="text-align: center; font-size: 20px; color: red;">
                                <a href="ViewMyReward.aspx" style="color:blue"> Average </a>
                                <br />
<%--                                                                <i class="pe-7s-medal" style="color: gold; font-size: 30px"></i>--%>

<%--                                <i class="fa fa-fw" aria-hidden="true" title="" style="color: gold; font-size: 30px"></i>--%>


                            </div>

                        </div>
                        <div class="widget-content-right">
                            <div class="widget-numbers text-success" style="text-align: center; font-size: 20px;">
                                <%

                                    Dim Averages As Double
                                    Try
                                        Dim cc As New appicationoperation

                                        Averages = cc.executeScalerDouble("SELECT AVG (TrainScore) AS Expr1 FROM User_Training_Table " &
                                            " GROUP BY UserID HAVING UserID = N'" & Session("userID") & "'")

                                        Response.Write(Math.Round(Averages, 3) & "%")
                                    Catch ex As Exception

                                    End Try

                                %>
                            </div>
                        </div>
                    </div>
                    <div class="widget-progress-wrapper">
                        <div class="progress-bar-sm progress-bar-animated-alt progress">
                            <%
                                Try

                                    Response.Write(" <div class='progress-bar bg-primary' role='progressbar' aria-valuenow='" & Averages & "%' aria-valuemin='0' aria-valuemax='100' style='width: " & Averages & "%;background-color:green  !important'></div>")

                                Catch ex As Exception

                                End Try

                            %>
                            <%--     !important--%>
                            <%-- <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 93%;">--%>
                        </div>
                    </div>

                </div>

            </div>

            

        </div>



        <div class="row" style="margin-bottom: 20px; border-bottom: 1px solid #ddd; display:none">
            <div class="col-md-3">
            </div>

            <div class="col-md-3" runat="server" id="divdutychart">
            </div>

            <div class="col-md-3" runat="server" id="divobjchart">
            </div>




        </div>



        



      

    </div>





    


    <div style="height: 500px"></div>


    <%--  </div>--%>







    <div class="app-drawer-overlay d-none animated fadeIn"></div>
</asp:Content>


