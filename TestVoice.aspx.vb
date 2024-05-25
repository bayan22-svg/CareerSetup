'Using Google.Cloud.Speech.V1;
'Using Google.Apis.Auth.OAuth2;
'import System.Data.SqlClient;
Imports Google.Cloud.Speech.V1
Imports Google.Apis.Auth.OAuth2

Partial Class TestVoice
    Inherits System.Web.UI.Page

    Private Sub Button1_Command(sender As Object, e As CommandEventArgs) Handles Button1.Command

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim Speech As New SpeechClientBuilder()
            Speech.CredentialsPath = Server.MapPath("twitterapi-273209-0e0ccd8c2be3.json")

            Speech.Build()
            Dim config As New RecognitionConfig
            config.Encoding = RecognitionConfig.Types.AudioEncoding.WebmOpus
            config.LanguageCode = LanguageCodes.Arabic.SaudiArabia
            ' Dim audio As Google.Cloud.Speech.V1.RecognitionAudio.FromFile(Server.MapPath("/sounds/"))

            Dim audio As New RecognitionAudio()
            audio = RecognitionAudio.FromFile(Server.MapPath("/sounds/"))




            '//   var audio = RecognitionAudio.FromFile("");

            'var Response = Speech.Recognize(config, audio);
            '    foreach(var result In response.Results)
            '    {
            '        foreach(var alternative In result.Alternatives)
            '        {
            '            TextBox1.Text += alternative.Transcript;
            '            //  Console.WriteLine(alternative.Transcript);
            '        }
            '    }
            '}

        Catch ex As Exception

        End Try
    End Sub
End Class
