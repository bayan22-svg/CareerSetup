using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenAI_API;
using System.Data.SqlClient;

using System.Threading.Tasks;
public partial class TrainWithCHatGPT : System.Web.UI.Page
{
    appicationoperation a = new appicationoperation();
    string API_Key_Code = "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";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SetTime(object sender, EventArgs e)
    {

    }







    private void GetQuestionID()
    {


        try
        {

            SqlConnection con = new SqlConnection(a.constr);
            SqlCommand cmd = new SqlCommand("SELECT indexID, QuestionTest, orderID FROM " +
                                      " GENERAL_QUASTIONS_TABLE WHERE indexID > " + int.Parse(TextBox1.Text) + "", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                TextBox1.Text = r["indexID"].ToString();
                TextBox2.Text = r["QuestionTest"].ToString();





            }

            con.Close();
            r.Close();


        }
        catch (Exception ex)
        { }


    }


    private async void GenerateQuestion_Test()
    {

        try {

            var authentication = new APIAuthentication(API_Key_Code);
            // APIAuthentication object used to create an instance of the OpenAIAPI class
            var api = new OpenAIAPI(authentication);
            // ChatGPT lets you start a new chat. 
            var conversation = api.Chat.CreateConversation();
            // Add user input and receive a reply from ChatGPT
            conversation.AppendUserInput("ارجو ان تقترح علي 5 اسئلة اختيار من متعدد لمقابلة وظيفة " + TextBox4.Text  + " مع تحديد الاجابة الصحيحة بعلامة معينة "     + " مع تحديد فاصل بين الاسئلة ب اشارة = وايضا وضع اشارة = قبل السؤال الاول " );
            var response = await conversation.GetResponseFromChatbot();
            // Textbox1.text = response;
           string Results = response;

            a.executeQuert("INSERT INTO Chat_GPT_Questions_Table  (TrainingID, QuestionText) VALUES(1,N'" + Results + "')");

            //string[] strr = Results.Split('=');
            //for (int i = 0; i < strr.Length; i++)
            //{
                
            // //   string[] QuestionText = strr[i].Split("\n");

            
            
            //}

        }
        catch (Exception ex)
        { }
    
    
    
    }


    protected async void Button2_Click(object sender, EventArgs e)
    {
        try {
            try
            {

                var authentication = new APIAuthentication(API_Key_Code);
                // APIAuthentication object used to create an instance of the OpenAIAPI class
                var api = new OpenAIAPI(authentication);
                // ChatGPT lets you start a new chat. 
                var conversation = api.Chat.CreateConversation();
                // Add user input and receive a reply from ChatGPT
                conversation.AppendUserInput("ارجو ان تقترح علي 5 اسئلة اختيار من متعدد لمقابلة وظيفة " + TextBox4.Text + " مع تحديد الاجابة الصحيحة بعلامة معينة " + " مع تحديد فاصل بين الاسئلة ب اشارة = وايضا وضع اشارة = قبل السؤال الاول ");
                var response = await conversation.GetResponseFromChatbot();
                // Textbox1.text = response;
                string Results = response;

                a.executeQuert("INSERT INTO Chat_GPT_Questions_Table  (TrainingID, QuestionText) VALUES(1,N'" + Results + "')");

                //string[] strr = Results.Split('=');
                //for (int i = 0; i < strr.Length; i++)
                //{

                // //   string[] QuestionText = strr[i].Split("\n");



                //}

            }
            catch (Exception ex)
            {
                TextBox4.Text = ex.Message;
            
            
            
            }

            

            //int res = a.executeQuery_WithReturn_ID("INSERT INTO User_Training_Table " +
            //                                                    " (UserID, TrainingTitle, TrainPosition, TrainDatetime, TrainScore, VideoName , TrainingTime ) " +
            //                                                    " output inserted.indexID VALUES   " +
            //                                                    "(N'" + Session["userID"] + "',N'" + TextBox6.Text + "',N'" + TextBox4.Text + "',N'" + DateTime.Now.Date + "','','' , '" + DateTime.Now.ToString() + "')");
            //if (res > 0)
            //{
            //    TextBox5.Text = res.ToString();
            //    Q_Div.Visible = true;
            //    T_Id.Visible = false;
            //    Timer1.Enabled = true;





            //}
            //If res > 0 Then
              
            //    GetQuestionID()
             

            //End If




        }
        catch (Exception ex)
        { }
    }
}