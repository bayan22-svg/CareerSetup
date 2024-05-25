Imports System.Data.SqlClient


Partial Class _Default
    Inherits System.Web.UI.Page

    '  Dim a As New appl


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            Dim con As New SqlConnection(a.constr)
            Dim cmd As New SqlCommand(" SELECT UserName, UserPassword  FROM UsersTable WHERE UserName = N'" & TextBox1.Text & "' AND UserPassword = N'" & TextBox2.Text & "' ", con)
            Dim r As SqlDataReader
            con.Open()
            r = cmd.ExecuteReader
            If r.Read Then

                Session("userID") = TextBox1.Text
                Response.Redirect("USER-HOME.aspx")

            Else



                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('please Enter Correct username amd password');", True)



            End If
            con.Close()

        Catch ex As Exception

        End Try




    End Sub

    



    

End Class
