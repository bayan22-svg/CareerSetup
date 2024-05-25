
Partial Class GeneralQuestions
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            a.executeQuert("DELETE FROM ANSWERS_TABLE WHERE UserID = N'" & Session("userID") & "'")

            For i As Integer = 0 To GridView2.Rows.Count - 1

                Dim txt As TextBox = GridView2.Rows(i).FindControl("txt_1")


                ' Try
                a.executeQuert("INSERT INTO ANSWERS_TABLE  (UserID, QuastionID, User_Answer) VALUES " &
                               " (N'" & Session("userID") & "'," & Val(GridView2.Rows(i).Cells(0).Text) & ",N'" & txt.Text & "')")
                '        Catch ex As Exception

                'End Try



            Next
            GridView1.DataBind()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Thank you for submit');", True)



        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub
End Class
