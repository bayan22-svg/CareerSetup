<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en">
<head>

    <link href="styles/sss.css" rel="stylesheet" />


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Career setup</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="Train Easily ">
    <!-- Disable tap highlight on IE -->
    <meta name="msapplication-tap-highlight" content="no">
    <link rel="stylesheet" href="./vendors/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="./vendors/ionicons-npm/css/ionicons.css">
    <link rel="stylesheet" href="./vendors/linearicons-master/dist/web-font/style.css">
    <link rel="stylesheet" href="./vendors/pixeden-stroke-7-icon-master/pe-icon-7-stroke/dist/pe-icon-7-stroke.css">
    <link href="./styles/css/base.css" rel="stylesheet">
</head>
<body>


    <form id="ff1" runat="server">
        <div class="animationload">
            <div class="loader">
                <%--  Please Wait....--%>
            </div>
        </div>

        <div class="app-container app-theme-white body-tabs-shadow">
            <div class="app-container">
                <div class="h-100">
                    <div class="h-100 g-0 row">
                        <div class="d-none d-lg-block col-lg-4">
                            <div class="slider-light">
                                <div class="slick-slider">
                                    <div>
                                        <div class="position-relative h-100 d-flex justify-content-center align-items-center bg-plum-plate" tabindex="-1">
                                            <div class="slide-img-bg" style="background-image: url('images/sidebar/city4.jpg');"></div>
                                            <div class="slider-content">
                                                <h3>Career Setup</h3>
                                                <p>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                   

                                </div>
                            </div>
                        </div>


                        <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-8">
                            <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">

                                <h4 class="mb-0" style="text-align: center; color: #000">
                                    <img src="img/logo.jpg" style="width: 150px; height: 150px; border-radius: 50%; border: 1px solid #1b2330" />
                                    <strong class="d-block" style="text-align: center">Career Setup</strong>
                                    <br />
                                    <span style="text-align: center">Please Enter Usernamr and Password for Login</span>
                                </h4>
                                <%--  <h6 class="mt-3">No account?
                                    <a href="javascript:void(0);" class="text-primary">Sign up now</a>
                                </h6>--%>
                                <div class="divider row"></div>


                                <div>

                                    <div class="">
                                        <div class="col-md-12">
                                            <div class="position-relative mb-3">
                                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" Style="border-radius: 30px; border: 1px solid #ddd; text-align: center" placeholder="username "></asp:TextBox>





                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="position-relative mb-3">
                                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password" Style="border-radius: 30px; border: 1px solid #ddd; text-align: center" placeholder="password "></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="divider row"></div>
                                    <asp:Button ID="Button1" runat="server" Style="width: 100%" Text=" Login" class="mb-2 me-2 btn-pill btn btn-outline-2x btn-outline-primary active" />

                                    <a href="Register.aspx"> dont have account...? Register</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- plugin dependencies -->
        <script type="text/javascript" src="./vendors/jquery/dist/jquery.min.js"></script>
        <script type="text/javascript" src="./vendors/slick-carousel/slick/slick.min.js"></script>
        <!-- custome.js -->
        <script type="text/javascript" src="./js/carousel-slider.js"></script>
    </form>
</body>
</html>
