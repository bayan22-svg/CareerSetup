Imports System.Data.SqlClient

Partial Class Register
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim con As New SqlConnection(a.constr)
            Dim cmd As New SqlCommand("INSERT INTO UsersTable  (UserName, UserFullName, UserPassword, UserPhone1, UserPhone2, UserEmail) VALUES  " &
                                      " (N'" & TextBox1.Text & "',N'" & TextBox3.Text & "',N'" & TextBox2.Text & "',N'" & TextBox5.Text & "',N'" & TextBox6.Text & "',N'" & TextBox4.Text & "')", con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('userAdded Successfully');", True)


        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('please Enter another username');", True)

        End Try


    End Sub
End Class
