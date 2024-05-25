using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OpenAI_API;

using System.Threading.Tasks;
public partial class GenerateInterview : System.Web.UI.Page
{
    int y = 0;
    appicationoperation a = new appicationoperation();

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected async void Button2_Click(object sender, EventArgs e)
    {


        string strSend = "please give me 100  Questions for the interview about a " + TextBox4.Text + " Job and make just 4 Multiple Choice for each question let the correct choice be the first answer and add the * sign  to the end of the correct answer split each question with the = sign  also add = and a new line before the first question";

        txt_chatSend.Text = strSend;


        var authentication = new APIAuthentication("*************************");
        // APIAuthentication object used to create an instance of the OpenAIAPI class
        var api = new OpenAIAPI(authentication);
        // ChatGPT lets you start a new chat. 
        var conversation = api.Chat.CreateConversation();
        // Add user input and receive a reply from ChatGPT

        // conversation.AppendUserInput("ارجو ان تقترح علي 5 اسئلة اختيار من متعدد لمقابلة وظيفة " + TextBox4.Text  + " مع اضافة اشارة * بجانب الاجابة  واضافة فاصل بين الاسئلة ب اشارة = مع سطر جديد وايضا وضع اشارة = قبل السؤال الاول");

        conversation.AppendUserInput(txt_chatSend.Text);

        var response = await conversation.GetResponseFromChatbot();
        // Textbox1.text = response;
        TextBox2.Text = response;
      
        
        
        
        try
        {

            y = 0;
            y = int.Parse(a.executeScaler("SELECT  MAX(TrainingID) AS Expr1 FROM Chat_GPT_Questions_Table").ToString());

            y= y + 1;

            string[] strr = TextBox2.Text.Split('=');
            for (int i = 1; i < strr.Length; i++)
            {

                string[] QuestionText = strr[i].Split(new string[] { "\r\n", "\r", "\n" },
  StringSplitOptions.None);

                try {

                    int q_id = a.executeQuery_WithReturn_ID("INSERT INTO Chat_GPT_Questions_Table   (TrainingID, QuestionText) output inserted.indexID " +
                       " VALUES (" +  y + ",N'" + QuestionText[1].ToString() + "')");

                    for (int j = 2; j < QuestionText.Length; j++)
                    {
                        try
                        {

                            string ans = QuestionText[j].ToString();
                            if (ans.Length > 2)
                            {
                                int iscorrect = 0;

                                if (ans.Contains('*'))
                                {
                                    iscorrect = 1;

                                }
                                //int x = a.executeQuert("INSERT INTO CHatGPT_QuestionsDetails_Table  (Main_QuestionID, AnswerText, IsCorrect) VALUES " +
                                //    " (" + q_id + ",N'" + ans.Replace("*", "") + "'," + iscorrect + ")");

                            }



                        }
                        catch (Exception ex)
                        { }

                       TextBox3.Text += QuestionText[j] + "\n\n";


                    }

                }

                catch (Exception ex)
                { }


                //response("TestInterView.aspx");

             //  Response.Redirect("TestInterView.aspx?ID=" + y + "&Title=" + TextBox4.Text  + "");

            }




        }
        catch (Exception ex)
        { }
    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TestInterView.aspx?ID=" + y + "&Title =" + TextBox4.Text + "");
    }
}