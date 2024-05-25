Imports System.Data.SqlClient

Partial Class TestInterView
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation

    Private Sub SaveAnswer()
        Try
            Dim con As New SqlConnection(a.constr)
            Dim cmd As New SqlCommand("INSERT INTO ANSWERS_TABLE   (TrainID , UserID, QuastionID, User_Answer, TimeToAnswer) VALUES " &
                                      "( " & Val(TextBox5.Text) & " , N'" & Session("userID") & "'," & Val(TextBox1.Text) & ",N'',N'" & lblTime.Text & "')", con)
            Dim r As SqlDataReader
            con.Open()
            cmd.ExecuteNonQuery()

            con.Close()
            r.Close()

        Catch ex As Exception

        End Try
    End Sub

    Private Sub GetQuestionID()
        Try

            Dim con As New SqlConnection(a.constr)
            Dim cmd As New SqlCommand("SELECT indexID, TrainingID, QuestionText " +
                " FROM  Chat_GPT_Questions_Table WHERE TrainingID = " & Request.QueryString("ID") & " And indexID > " & Val(TextBox1.Text) & "", con)
            Dim r As SqlDataReader
            con.Open()
            r = cmd.ExecuteReader
            If r.Read Then
                TextBox1.Text = r("indexID").ToString
                TextBox2.Text = r("QuestionText").ToString
                GetQuestionDetails(TextBox1.Text)
            Else
                con.Close()
                r.Close()
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Questions End... please save video');", True)
                ' Response.Redirect("MyVideos.aspx")
            End If
            con.Close()
            r.Close()





            'Dim con As New SqlConnection(a.constr)
            'Dim cmd As New SqlCommand("SELECT indexID, QuestionTest, orderID FROM " &
            '                          " GENERAL_QUASTIONS_TABLE WHERE indexID > " & Val(TextBox1.Text) & "", con)
            'Dim r As SqlDataReader
            'con.Open()
            'r = cmd.ExecuteReader
            'If r.Read Then
            '    TextBox1.Text = r("indexID").ToString
            '    TextBox2.Text = r("QuestionTest").ToString

            'Else
            '    con.Close()
            '    r.Close()
            '    '  ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Questions End');window.location ='GeneralQuestions.aspx';", True)
            '    Response.Redirect("GeneralQuestions.aspx")
            'End If
            'con.Close()
            'r.Close()

        Catch ex As Exception

        End Try
    End Sub
    Private Sub GetQuestionDetails(id As Integer)
        Try

            TextBox7.Text = ""


            Dim con As New SqlConnection(a.constr)
            Dim cmd As New SqlCommand("SELECT        Main_QuestionID, AnswerText FROM            CHatGPT_QuestionsDetails_Table WHERE Main_QuestionID = " & id & "", con)
            Dim r As SqlDataReader
            con.Open()
            r = cmd.ExecuteReader
            While r.Read
                TextBox7.Text += vbCrLf & r("AnswerText").ToString


            End While
            con.Close()
            r.Close()

        Catch ex As Exception

        End Try
    End Sub
    Private Sub TestInterView_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                Try
                    TextBox4.Text = Request.QueryString("Title")
                Catch ex As Exception

                End Try
                Try
                    TextBox3.Text = a.getstr("SELECT UserName, UserFullName FROM  UsersTable WHERE " &
                                             " UserName = N'" & Session("userID") & "'", "UserFullName")

                Catch ex As Exception

                End Try

                Try
                    Timer1.Enabled = False

                    'a.executeQuert("DELETE FROM ANSWERS_TABLE WHERE UserID = N'" & Session("userID") & "'")
                Catch ex As Exception

                End Try
                StartTime = 0

                'GetQuestionID()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Timer1.Enabled = False
            SaveAnswer()
            lblTime.Text = 0
            StartTime = 0

            GetQuestionID()
            Timer1.Enabled = True

        Catch ex As Exception

        End Try

    End Sub
    Public Shared StartTime As Integer = 1



    Protected Sub SetTime(ByVal sender As Object, ByVal e As EventArgs)
        lblTime.Text = Convert.ToString(StartTime)
        StartTime += 1
        ' lblTime.Text = StartTime



    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim res As Integer = a.executeQuery_WithReturn_ID("INSERT INTO User_Training_Table " &
                                                              " (UserID, TrainingTitle, TrainPosition, TrainDatetime, TrainScore, VideoName , TrainingTime ) " &
                                                              " output inserted.indexID VALUES   " &
                                                              "(N'" & Session("userID") & "',N'" & TextBox6.Text & "',N'" & TextBox4.Text & "',N'" & Date.Now.Date & "','','' , '" & TimeString & "')")
            If res > 0 Then
                TextBox5.Text = res
                Q_Div.Visible = True
                T_Id.Visible = False
                ' v_div.Visible = True

                GetQuestionID()
                Timer1.Enabled = True

            End If

        Catch ex As Exception

        End Try
    End Sub
End Class
