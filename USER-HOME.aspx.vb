
Partial Class USER_HOME
    Inherits System.Web.UI.Page


    Private Sub FillCircit_1(per As String)

        Try
            Dim htmlcode As String = " <section  style='text-align: center;' >" +
                " <h6>CV Completed</h6>" +
                " <svg class='circle-chart' viewbox='0 0 33.83098862 33.83098862' width='100' height='100' xmlns='http://www.w3.org/2000/svg'>" +
                "  <circle class='circle-chart__background' stroke='#efefef' stroke-width='2' fill='none' cx='16.91549431' cy='16.91549431' r='15.91549431' />" +
                " <circle class='circle-chart__circle' stroke='#00acc1' stroke-width='2' stroke-dasharray='" & per & "' stroke-linecap='round' fill='none' cx='16.91549431' cy='16.91549431' r='15.91549431' />" +
                " <g class='circle-chart__info'>" +
                " <text class='circle-chart__percent' x='16.91549431' y='15.5' alignment-baseline='central' text-anchor='middle' font-size='8'>" & per & "%</text>" +
                " </g>" +
                "</svg>" +
                " </section>" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
               "" +
            "" +
            ""


            divobjchart.InnerHtml = htmlcode




















        Catch ex As Exception

        End Try


    End Sub
    Private Sub FillCircit_2(per As String)

        Try
            Dim htmlcode As String = " <section style='text-align: center;' >" +
                " <h6> Information Completed</h6>" +
                " <svg class='circle-chart' viewbox='0 0 33.83098862 33.83098862' width='100' height='100' xmlns='http://www.w3.org/2000/svg'>" +
                "  <circle class='circle-chart__background' stroke='#efefef' stroke-width='2' fill='none' cx='16.91549431' cy='16.91549431' r='15.91549431' />" +
                " <circle class='circle-chart__circle' stroke='#00acc1' stroke-width='2' stroke-dasharray='" & per & "' stroke-linecap='round' fill='none' cx='16.91549431' cy='16.91549431' r='15.91549431' />" +
                " <g class='circle-chart__info'>" +
                " <text class='circle-chart__percent' x='16.91549431' y='15.5' alignment-baseline='central' text-anchor='middle' font-size='8'>" & per & "%</text>" +
                " </g>" +
                "</svg>" +
                " </section>" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
                "" +
               "" +
            "" +
            ""


            divdutychart.InnerHtml = htmlcode




















        Catch ex As Exception

        End Try


    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            FillCircit_1(50)
            FillCircit_2(85)

        Catch ex As Exception

        End Try
    End Sub
End Class
