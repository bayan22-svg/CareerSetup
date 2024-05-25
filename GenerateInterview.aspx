<%@ Page Title="" Language="C#" MasterPageFile="~/USER-MasterPage.master" AutoEventWireup="true" CodeFile="GenerateInterview.aspx.cs" Inherits="GenerateInterview" Async="true" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">







    <div class="row">



                    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                    <div class="main-card mb-3 card" style="border: 1px solid #000; border-radius: 20px;">
                        <div class="card-body">

                        
                                    <div class="row" id="T_Id" runat="server">
                                        <div class="col-md-12">


                                            <asp:TextBox ID="TextBox5" Visible="false" CssClass="form-control" runat="server" ReadOnly="true" BackColor="WhiteSmoke"></asp:TextBox>
                                        </div>

                                        <div class="col-md-12">

                                            <label>Name</label>
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="true" BackColor="WhiteSmoke"></asp:TextBox>
                                        </div>

                                        <div class="col-md-12" style="display:none">
                                            <label>Training Title</label>
                                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>


                                        



                                        <div class="col-md-12">
                                            <label>Training Position</label>
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>

                                          <div class="col-md-12">
                                         send message
                                                      <asp:TextBox ID="txt_chatSend" runat="server" TextMode="MultiLine" Height="200" Width="100%"></asp:TextBox>

                                              </div>



                                        <div class="col-md-12">
                                            <asp:Button ID="Button2" runat="server" Text="Start Training" OnClick="Button2_Click" />

                                            <asp:Button ID="Button1" runat="server" Text="go to 2" OnClick="Button1_Click" />



                                        </div>

                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="400"  ></asp:TextBox>
                                    </div>

                                    











                        </div>
                    </div>




    </div>
    <link rel="stylesheet" href="https://www.webrtc-experiment.com/style.css">
    <script src="https://www.webrtc-experiment.com/RecordRTC.js"></script>
    <script src="https://www.webrtc-experiment.com/DetectRTC.js"></script>
    <script src="https://www.webrtc-experiment.com/gif-recorder.js"></script>
    <script src="https://www.webrtc-experiment.com/getMediaElement.js"></script>

    <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>

   
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

