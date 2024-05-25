
Partial Class USER_MasterPage
    Inherits System.Web.UI.MasterPage

    Public Function GetImage(str As String) As String
        Return "img/" & str
    End Function
End Class

