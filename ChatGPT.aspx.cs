using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenAI_API;

using System.Threading.Tasks;


public partial class ChatGPT : System.Web.UI.Page
{
    appicationoperation a = new appicationoperation();

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    //var openAiApi = new OpenAI_API.OpenAIApi("your-api-key");
    //}


    protected async void Page_Load(object sender, EventArgs e)
    {
       
    }




    protected async void Button1_Click(object sender, EventArgs e)
    {
        var authentication = new APIAuthentication("******************");
        // APIAuthentication object used to create an instance of the OpenAIAPI class
        var api = new OpenAIAPI(authentication);
        // ChatGPT lets you start a new chat. 
        var conversation = api.Chat.CreateConversation();
        // Add user input and receive a reply from ChatGPT

        conversation.AppendUserInput(TextBox2.Text);
        var response = await conversation.GetResponseFromChatbot();
       // Textbox1.text = response;
        TextBox1.Text = response;
        
        //Console.WriteLine(response);
        //// Before closing the terminal window, await user input.
        //Console.ReadLine();
    }
    static async Task Main()
    {
        // Instances of the APIAuthentication class can be created using your API key.
        var authentication = new APIAuthentication("**************");
        // APIAuthentication object used to create an instance of the OpenAIAPI class
        var api = new OpenAIAPI(authentication);
        // ChatGPT lets you start a new chat. 
        var conversation = api.Chat.CreateConversation();
        // Add user input and receive a reply from ChatGPT
        conversation.AppendUserInput("Hello");
        var response = await conversation.GetResponseFromChatbot();
       // Textbox1.text = response;
      
        Console.WriteLine(response);
        // Before closing the terminal window, await user input.
        Console.ReadLine();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            string[] strr = TextBox1.Text.Split('=');
            for (int i = 1; i < strr.Length; i++)
            {

                  string[] QuestionText = strr[i].Split(new string[] { "\r\n", "\r", "\n" },
    StringSplitOptions.None);


                int q_id = a.executeQuery_WithReturn_ID("INSERT INTO Chat_GPT_Questions_Table   (TrainingID, QuestionText) output inserted.indexID "+
                    " VALUES (0,N'" + QuestionText[1].ToString() + "')");

                for (int j = 2; j < QuestionText.Length; j++)
                {
                    try {

                        string ans = QuestionText[j].ToString();
                        if (ans.Length > 2)
                        {
                            int iscorrect = 0;

                            if (ans.Contains('*'))
                            {
                                iscorrect = 1;

                            }
                            int x = a.executeQuert("INSERT INTO CHatGPT_QuestionsDetails_Table  (Main_QuestionID, AnswerText, IsCorrect) VALUES "+
                                " (" + q_id + ",N'" + ans.Replace("*","") + "'," + iscorrect + ")");

                        }

                     

                    }
                    catch (Exception ex)
                    { }

                    TextBox3.Text += QuestionText[j] + "\n\n";

                
                }




            }




        }
        catch (Exception ex)
        { }
    }
}