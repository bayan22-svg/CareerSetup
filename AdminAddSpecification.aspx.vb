
Partial Class AdminAddSpecification
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            a.executeQuert("INSERT INTO SpecificationsTable    (SpecificationName) VALUES " &
                           " (N'" & TextBox2.Text & "')")
            GridView1.DataBind()

        Catch ex As Exception

        End Try
    End Sub
End Class
