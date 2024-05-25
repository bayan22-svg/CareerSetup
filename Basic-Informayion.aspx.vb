Imports System.Data.SqlClient

Partial Class Basic_Informayion
    Inherits System.Web.UI.Page
    Dim a As New appicationoperation


    Private Sub Fill_Evaluation()
        Try
            Dim v1, v2, v3, v4, v5 As Double

            Try
                v1 = a.executeScaler("SELECT SUM(PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionMark) AS Expr1 FROM PERSONAL_QUESTIONS_ANSWER_TABLE INNER JOIN " &
                              " PERSONAL_QUESTIONS_TABLE ON PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionID = PERSONAL_QUESTIONS_TABLE.indexID " &
                              " GROUP BY PERSONAL_QUESTIONS_TABLE.QuestionType, PERSONAL_QUESTIONS_ANSWER_TABLE.UserID " &
                              " HAVING        (PERSONAL_QUESTIONS_TABLE.QuestionType = N'Openness') AND (PERSONAL_QUESTIONS_ANSWER_TABLE.UserID = N'" & Session("userID") & "')")



                Select Case v1
                    Case 1 To 14
                        TextBox14.Text = v1 & " _ " & "L o w  O p e n n e s s"


                    Case 15 To 28
                        TextBox14.Text = v1 & " _ " & "S e m i  O p e n n e s s"

                    Case 29 To 35
                        TextBox14.Text = v1 & " _ " & "H i g h  O p e n n e s s
"

                End Select


            Catch ex As Exception

            End Try



            Try
                v2 = a.executeScaler("SELECT SUM(PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionMark) AS Expr1 FROM PERSONAL_QUESTIONS_ANSWER_TABLE INNER JOIN " &
                              " PERSONAL_QUESTIONS_TABLE ON PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionID = PERSONAL_QUESTIONS_TABLE.indexID " &
                              " GROUP BY PERSONAL_QUESTIONS_TABLE.QuestionType, PERSONAL_QUESTIONS_ANSWER_TABLE.UserID " &
                              " HAVING        (PERSONAL_QUESTIONS_TABLE.QuestionType = N'Conscientiousness') AND (PERSONAL_QUESTIONS_ANSWER_TABLE.UserID = N'" & Session("userID") & "')")




                Select Case v2
                    Case 1 To 22
                        TextBox15.Text = v2 & " _ " & "L o w  Conscientiousness"


                    Case 23 To 44
                        TextBox15.Text = v2 & " _ " & "S e m i Conscientiousness"

                    Case 29 To 35
                        TextBox15.Text = v2 & " _ " & "H i g h  Conscientiousness"

                End Select


            Catch ex As Exception

            End Try



            Try
                v3 = a.executeScaler("SELECT SUM(PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionMark) AS Expr1 FROM PERSONAL_QUESTIONS_ANSWER_TABLE INNER JOIN " &
                              " PERSONAL_QUESTIONS_TABLE ON PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionID = PERSONAL_QUESTIONS_TABLE.indexID " &
                              " GROUP BY PERSONAL_QUESTIONS_TABLE.QuestionType, PERSONAL_QUESTIONS_ANSWER_TABLE.UserID " &
                              " HAVING        (PERSONAL_QUESTIONS_TABLE.QuestionType = N'Extroversion') AND (PERSONAL_QUESTIONS_ANSWER_TABLE.UserID = N'" & Session("userID") & "')")



                Select Case v3
                    Case 0 To 18
                        TextBox16.Text = v3 & " _ " & "I n t r o v e r t"


                    Case 19 To 36
                        TextBox16.Text = v3 & " _ " & "A m b i v e r t"

                    Case 37 To 45
                        TextBox16.Text = v3 & " _ " & "Ex tr o v e rt"

                End Select







            Catch ex As Exception

            End Try




            Try
                v4 = a.executeScaler("SELECT SUM(PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionMark) AS Expr1 FROM PERSONAL_QUESTIONS_ANSWER_TABLE INNER JOIN " &
                              " PERSONAL_QUESTIONS_TABLE ON PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionID = PERSONAL_QUESTIONS_TABLE.indexID " &
                              " GROUP BY PERSONAL_QUESTIONS_TABLE.QuestionType, PERSONAL_QUESTIONS_ANSWER_TABLE.UserID " &
                              " HAVING        (PERSONAL_QUESTIONS_TABLE.QuestionType = N'Agreeableness') AND (PERSONAL_QUESTIONS_ANSWER_TABLE.UserID = N'" & Session("userID") & "')")



                Select Case v4
                    Case 0 To 18
                        TextBox17.Text = v4 & " _ " & "low Agreeableness"


                    Case 19 To 36
                        TextBox17.Text = v4 & " _ " & "simi Agreeableness"

                    Case 37 To 45
                        TextBox17.Text = v4 & " _ " & "H i g h l y Agreeableness"

                End Select










            Catch ex As Exception

            End Try



            Try
                v5 = a.executeScaler("SELECT SUM(PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionMark) AS Expr1 FROM PERSONAL_QUESTIONS_ANSWER_TABLE INNER JOIN " &
                              " PERSONAL_QUESTIONS_TABLE ON PERSONAL_QUESTIONS_ANSWER_TABLE.QuestionID = PERSONAL_QUESTIONS_TABLE.indexID " &
                              " GROUP BY PERSONAL_QUESTIONS_TABLE.QuestionType, PERSONAL_QUESTIONS_ANSWER_TABLE.UserID " &
                              " HAVING        (PERSONAL_QUESTIONS_TABLE.QuestionType = N'Neuroticism') AND (PERSONAL_QUESTIONS_ANSWER_TABLE.UserID = N'" & Session("userID") & "')")


                Select Case v5
                    Case 0 To 18
                        TextBox18.Text = v5 & " _ " & "low Neuroticism"


                    Case 19 To 36
                        TextBox18.Text = v5 & " _ " & "simi Neuroticism"

                    Case 37 To 45
                        TextBox18.Text = v5 & " _ " & "H i g h l y Neuroticism"

                End Select




            Catch ex As Exception

            End Try





        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                Fill_Evaluation()
                Dim con As New SqlConnection(a.constr)
                Dim cmd As New SqlCommand("SELECT  UserName, UserFullName, UserPassword, UserAddress, UserPhone1, UserPhone2, UserEmail " &
                                          " FROM UsersTable WHERE UserName = N'" & Session("userID") & "'", con)
                Dim r As SqlDataReader
                con.Open()
                r = cmd.ExecuteReader
                If r.Read Then
                    TextBox1.Text = r("UserFullName").ToString
                    TextBox2.Text = r("UserAddress").ToString
                    TextBox3.Text = r("UserPhone1").ToString
                    TextBox4.Text = r("UserPhone2").ToString
                    TextBox5.Text = r("UserEmail").ToString
                Else
                    ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No Data Found');", True)


                End If
                con.Close()

            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim res As Integer = a.executeQuert("UPDATE UsersTable SET  UserFullName = N'" & TextBox1.Text & "', UserAddress =  N'" & TextBox2.Text & "', " &
                                                " UserPhone1 =  N'" & TextBox3.Text & "', UserPhone2 =  N'" & TextBox4.Text & "', UserEmail =  N'" & TextBox5.Text & "'" &
                                                " WHERE UserName = N'" & Session("userID") & "'")
            If res = 1 Then
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Updated Done');", True)
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Error please Try again...');", True)
            End If
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Error please Try again...');", True)
        End Try
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Dim res As Integer = a.executeQuert("INSERT INTO UsersQualificationsTable   (UserName, QualificationName, GradeYears, Grades) VALUES  " &
                                                " (N'" & Session("userID") & "',N'" & TextBox6.Text & "',N'" & TextBox7.Text & "', N'" & TextBox8.Text & "')")
            If res = 1 Then
                GridView1.DataBind()
                TextBox6.Text = ""
                TextBox7.Text = ""
                TextBox8.Text = ""
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Try
            Dim res As Integer = a.executeQuert("INSERT INTO UsersCoursesTable   (UserName, CourseName, CourseAddress, CourseYears) VALUES   " &
                                                " (N'" & Session("userID") & "',N'" & TextBox9.Text & "',N'" & TextBox10.Text & "', N'" & TextBox11.Text & "')")
            If res = 1 Then
                GridView2.DataBind()
                TextBox9.Text = ""
                TextBox10.Text = ""
                TextBox11.Text = ""
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Try
            Dim res As Integer = a.executeQuert("INSERT INTO UsersExperianceTable  (UserName, ExperianceName, ExperianceYears) VALUES  " &
                              " (N'" & Session("userID") & "',N'" & TextBox12.Text & "',N'" & TextBox13.Text & "')")
            If res = 1 Then
                GridView3.DataBind()
                TextBox12.Text = ""
                TextBox13.Text = ""

            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Try
            a.executeQuert("delete from  PERSONAL_QUESTIONS_ANSWER_TABLE where UserID = N'" & Session("userID") & "'")
            Dim txt As DropDownList

            For i As Integer = 0 To GridView4.Rows.Count - 1
                txt = GridView4.Rows(i).FindControl("DropDownList1")
                a.executeQuert("INSERT INTO PERSONAL_QUESTIONS_ANSWER_TABLE  (QuestionID, UserID, QuestionMark) VALUES    " &
                               "(" & Val(GridView4.Rows(i).Cells(0).Text) & ",N'" & Session("userID") & "'," & Val(txt.SelectedValue) & ")")

            Next

            Fill_Evaluation()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Updated Done');", True)

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub
End Class
