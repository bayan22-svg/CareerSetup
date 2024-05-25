
Partial Class AnswerDetail
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub AnswerDetail_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                Try
                    Dim v As String = ""
                    Try
                        v = a.getstr("SELECT  indexID, VideoName FROM User_Training_Table " &
                            " WHERE indexID = " & Val(Request.QueryString("ID")) & "", "VideoName")

                    Catch ex As Exception

                    End Try

                    Dim str As String = "  <div class='col-sm-9'>" +
"  <a href='#' class='text-decoration-none'>" +
" <div class='card custom-card-style-2 border-0 border-radius-0'>" +
"   <div class='card-img-top'>" +
"<div class='ratio ratio-16x9'>" +
"<iframe src='Videos/" & v & "' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>" +
"</div>	" +
" " +
"  </div>" +
"<div class='card-body text-center'>" +
" " +
"" +
"" +
"  </div>" +
"    </div>" +
"   </a>" +
" </div>" +
""
                    div_vidoe.InnerHtml = str


                Catch ex As Exception

                End Try
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
