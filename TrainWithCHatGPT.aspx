<%@ Page Title="" Language="C#" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="true" CodeFile="TrainWithCHatGPT.aspx.cs" Inherits="TrainWithCHatGPT" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">







    <div class="row">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <fieldset>


                    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                        <div class="card-body">

                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <div class="row" id="T_Id" runat="server" >
                                            <div class="col-md-12" style="border:3px solid #ddd;border-radius:50px">

                                         
                                            <asp:TextBox ID="TextBox5" Visible="false"  CssClass="form-control" runat="server" ReadOnly="true" BackColor="WhiteSmoke" ></asp:TextBox>
                                        </div>

                                        <div class="col-md-12" >

                                            <label>Name</label>
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="true" BackColor="WhiteSmoke" ></asp:TextBox>
                                        </div>

                                          <div class="col-md-12" >
                                            <label>Training Title</label>
                                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>


                                         <div class="col-md-12" >
                                            <label>Training Position</label>
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ></asp:TextBox>
                                        </div>
                                         <div class="col-md-12" >
                                             <asp:Button ID="Button2" runat="server" Text="Start Training" OnClick="Button2_Click" />
                                             </div>


                                    </div>
                                     <div class="row" id="Q_Div" runat="server" visible="false" >
                                    <div class="col-md-12" style="text-align: center; font-size: 45px; color: maroon; font-weight: bold; direction: rtl;">
                                        <div class="col-md-2" style="text-align: center; font-size: 35px; color: maroon; font-weight: bold; border-radius: 50%; border: 5px solid #000; height: 100px; width: 100px; padding-top: 25px;">

                                            <asp:Label ID="lblTime" runat="server" Text="0" />
                                        </div>
                                    </div>

                                    <asp:Timer ID="Timer1" runat="server" OnTick="SetTime" Interval="1000" />
                                    <br />
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                                            <div class="col-md-12">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="100" TextMode="MultiLine" Style="text-align: right" ReadOnly="true" BackColor="WhiteSmoke"></asp:TextBox>

                            </div>


                                         </div>

                                    
                         

                                </ContentTemplate>
                            </asp:UpdatePanel>



                           

                        </div>
                    </div>


                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>


    </div>
    <link rel="stylesheet" href="https://www.webrtc-experiment.com/style.css">
    <script src="https://www.webrtc-experiment.com/RecordRTC.js"></script>
    <script src="https://www.webrtc-experiment.com/DetectRTC.js"></script>
    <script src="https://www.webrtc-experiment.com/gif-recorder.js"></script>
    <script src="https://www.webrtc-experiment.com/getMediaElement.js"></script>

    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>

    <div class="github-stargazers"></div>
    <section class="experiment" >

        <div id="videos-container" style="width:500px;height:500px"></div>
        <audio id="audio"></audio>
        <button id="start">Start</button>
        <button id="stop">Stop</button>

        <button id="save" disabled>Save to My PC</button>


        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <fieldset>


                    <asp:Button ID="Button1" runat="server" Text="Next Question" />


                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>


    </section>

    <script>
        function captureUserMedia(mediaConstraints, successCallback, errorCallback) {
            navigator.mediaDevices.getUserMedia(mediaConstraints).then(successCallback).catch(errorCallback);
        }

        var videosContainer = document.getElementById('videos-container');

        var mRecordRTC = new MRecordRTC();
        mRecordRTC.mediaType = {
            audio: true, // or StereoAudioRecorder or MediaStreamRecorder (WebAssembly also supports audio-encoding however not implemented in WebAssemblyRecorder YET)
            video: true  // or WhammyRecorder      or MediaStreamRecorder or WebAssemblyRecorder or CanvasRecorder
        };

        if (DetectRTC.browser.name === 'Edge') {
            // Microsoft Edge currently supports only audio and gif recording
            mRecordRTC.mediaType = {
                audio: StereoAudioRecorder
            };
        }
        // mRecordRTC.bufferSize = 16384;

        document.querySelector('#start').onclick = function () {
            this.disabled = true;

            captureUserMedia({
                audio: true,
                video: true
            }, function (stream) {
                var video = document.createElement('video');
                video.autoplay = true;
                video.srcObject = stream;

                var mediaElement = getMediaElement(video, {
                    buttons: [],
                    showOnMouseEnter: false,
                    enableTooltip: false,
                    onMuted: function () {
                        document.querySelector('#audio').muted = true;
                    },
                    onUnMuted: function () {
                        document.querySelector('#audio').muted = false;
                        document.querySelector('#audio').play();
                    }
                });
                videosContainer.appendChild(mediaElement);

                mRecordRTC.addStream(stream);
                mRecordRTC.startRecording();
            }, function (error) {
                alert(JSON.stringify(error));
            });
        };

        document.querySelector('#stop').onclick = function () {
            this.disabled = true;

            mRecordRTC.stopRecording(function (url, type) {
                document.querySelector(type).srcObject = null;
                document.querySelector(type).src = url;
                document.querySelector(type).play();

                // fixing firefox playback issue
                if (!!navigator.mozGetUserMedia) {
                    document.querySelector(type).onended = function () {
                        document.querySelector(type).srcObject = null;
                        document.querySelector(type).src = URL.createObjectURL(mRecordRTC.getBlob()[type]);
                        document.querySelector(type).play();
                    };
                }
               // mRecordRTC.
                mRecordRTC.writeToDisk();
                save.disabled = false;
            });
        };

        document.getElementById('save').onclick = function () {
            this.disabled = true;
            mRecordRTC.save();

        };

        document.querySelector('#get').onclick = function () {
            this.disabled = true;

            !!navigator.webkitGetUserMedia && MRecordRTC.getFromDisk('all', function (dataURL, type) {
                if (!dataURL) return;

                if (type == 'audio') {
                    document.querySelector('#audio').src = dataURL;
                }
                if (type == 'video') {
                    var video = document.createElement('video');
                    video.src = dataURL;
                    var mediaElement = getMediaElement(video, {
                        buttons: ['mute-video'],
                        showOnMouseEnter: false,
                        enableTooltip: false,
                        onMuted: function () {
                            document.querySelector('#audio').muted = true;
                        },
                        onUnMuted: function () {
                            document.querySelector('#audio').muted = false;
                            document.querySelector('#audio').play();
                        }
                    });
                    videosContainer.appendChild(mediaElement);
                    document.querySelector('#audio').play();
                    mediaElement.media.play();
                }

                if (type == 'gif') {
                    var gifImage = document.createElement('img');
                    gifImage.src = dataURL;
                    videosContainer.appendChild(gifImage);
                }
            });

            !!navigator.mozGetUserMedia && MRecordRTC.getFromDisk('video', function (dataURL) {
                if (!dataURL) return;

                var video = document.createElement('video');
                video.src = dataURL;
                var mediaElement = getMediaElement(video, {
                    buttons: ['mute-video'],
                    showOnMouseEnter: false,
                    enableTooltip: false,
                    onMuted: function () {
                        mediaElement.muted = true;
                    },
                    onUnMuted: function () {
                        mediaElement.muted = false;
                        mediaElement.play();
                    }
                });
                videosContainer.appendChild(mediaElement);
                mediaElement.media.play();
            });
        };

        window.addEventListener('beforeunload', function () {
            document.querySelector('#start').disabled = false;
            document.querySelector('#stop').disabled = false;
            document.querySelector('#get').disabled = false;
        }, false);
    </script>



</asp:Content>

