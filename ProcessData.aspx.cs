using Google.Cloud.Speech.V1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NAudio.Wave;
using System.IO;
using Google.Apis.Auth.OAuth2;

public partial class ProcessData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        //try
        //{


        var speech = new SpeechClientBuilder
        {
            CredentialsPath = Server.MapPath("twitterapi-273209-0458c834b0c5.json")
        }.Build();


        // var speech = SpeechClient.Create();

        var config = new RecognitionConfig
        {
            //  Encoding = RecognitionConfig.Types.AudioEncoding.WebmOpus,
            //  Encoding = RecognitionConfig.Types.AudioEncoding.WebmOpus,
            LanguageCode = LanguageCodes.Arabic.SaudiArabia

        };


        for (int i = 0; i < GridView3.Rows.Count; i++)
        {

            //var audio = RecognitionAudio.FromFile("D:\\f\\5.webm");
            var audio = RecognitionAudio.FetchFromUri("https://www.career-setup.com/Videos/" + GridView3.Rows[i].Cells[2].Text + "");


            // var audionn = RecognitionAudio.

            // var audio = RecognitionAudio.FetchFromUri(Server.MapPath("Videos") + "\\" + GridView3.Rows[i].Cells[2].Text + "");

            TextBox txt = (TextBox)(GridView3.Rows[i].FindControl("txt_1"));
            txt.Text = "";

            //   var audio = RecognitionAudio.FromFile("");

            var response = speech.Recognize(config, audio);
            foreach (var result in response.Results)
            {
                foreach (var alternative in result.Alternatives)
                {
                    txt.Text += alternative.Transcript;
                    //  Console.WriteLine(alternative.Transcript);
                }
            }


        }

        //}
        //catch (Exception ex)
        //{ }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        RecognitionAudio audio1 = RecognitionAudio.FromFile("Sound/SpeechSample.flac");
        RecognitionAudio audio2 = RecognitionAudio.FetchFromUri("https://.../HostedSpeech.flac");
        RecognitionAudio audio3 = RecognitionAudio.FromStorageUri("gs://my-bucket/my-file");
        RecognitionAudio audio5;
        //byte[] bytes = ReadAudioData(); // For example, from a database
        // RecognitionAudio audio4 = RecognitionAudio.FromBytes(bytes);

        using (Stream stream = OpenAudioStream()) // Any regular .NET stream
        {
            audio5 = RecognitionAudio.FromStream(stream);
        }
        SpeechClient client = SpeechClient.Create();
        RecognitionConfig config = new RecognitionConfig
        {
            // Encoding = AudioEncoding.Linear16,
            SampleRateHertz = 16000,
            LanguageCode = LanguageCodes.Arabic.Jordan
        };
        RecognizeResponse response = client.Recognize(config, audio5);
        Console.WriteLine(response);
    }

    private Stream OpenAudioStream()
    {
        throw new NotImplementedException();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        
        
        
        
        }
        catch (Exception ex)
        { }
    }
}