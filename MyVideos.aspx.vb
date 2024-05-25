
Partial Class MyVideos
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim file1 As String = "Video__" & Date.Now.Ticks
        Try
            If FileUpload1.HasFile Then
                file1 &= System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName)
                FileUpload1.SaveAs(Server.MapPath("Videos/" & file1))

                Dim res As Integer = a.executeQuert("UPDATE User_Training_Table SET " &
                                                    " VideoName = N'" & file1 & "' WHERE indexID = " & Val(DropDownList1.SelectedValue) & "")

                If res = 1 Then
                    ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Thank you for upload video');", True)
                    GridView3.DataBind()
                Else


                End If





            End If




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
