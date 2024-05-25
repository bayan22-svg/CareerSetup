Imports System.Data.SqlClient

Partial Class RecodeVideo
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub RecodeVideo_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                Dim con As New SqlConnection(a.constr)
                Dim cmd As New SqlCommand("SELECT UserID FROM ANSWERS_TABLE WHERE UserID = N'" & Session("userID") & "'", con)
                Dim r As SqlDataReader
                con.Open()
                r = cmd.ExecuteReader
                If r.Read Then
                Else
                    con.Close()
                    ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Please Answer the General Questions Before Record a video');window.location ='GeneralQuestions.aspx';", True)

                End If
                con.Close()

            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
