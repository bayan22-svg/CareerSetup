<%@ Page Title="" Language="C#" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="true" CodeFile="ChatGPT.aspx.cs" Inherits="ChatGPT" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
            <div class="card-body">
              
                  <div class="col-md-12">
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="100" Width="100%">ارجو ان تقترح علي 5 اسئلة اختيار من متعدد لمقابلة وظيفة مبرمج مع تحديد الاجابة الصحيحة بعلامة * واضافة فاصل بين الاسئلة ب اشارة ===== وايضا وضع اشارة ==== قبل السؤال الاول

</asp:TextBox>

                      </div>
                
                
                <div class="col-md-12">


                    <asp:Button ID="Button1" runat="server" Text="Call Chat GPT" OnClick="Button1_Click" />

                    <asp:Button ID="Button2" runat="server" Text="Save to Database" OnClick="Button2_Click" />


                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="400" Width="100%"></asp:TextBox>
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="400" Width="100%"></asp:TextBox>




                </div>
            </div>
        </div>
    </div>
</asp:Content>

