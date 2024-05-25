Imports System.Data.SqlClient

Partial Class Qualification
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim res As Integer = a.executeQuert("INSERT INTO UsersQualificationsTable   (UserName, QualificationName, GradeYears, Grades) VALUES  " &
                                                " (N'" & Session("userID") & "',N'" & TextBox2.Text & "',N'" & TextBox1.Text & "', N'" & TextBox3.Text & "')")
            If res = 1 Then
                GridView1.DataBind()
                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox3.Text = ""
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
