﻿


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs"  EnableEventValidation="false" Inherits="WebApplication4.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
</head>

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<title>TicketMaster</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-plot-listing.css">
    <link rel="stylesheet" href="assets/css/animated.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<!--

TemplateMo 564 Plot Listing

https://templatemo.com/tm-564-plot-listing

-->
  </head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="index.aspx" class="logo">
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li><a href="index.aspx">Home</a></li>
              <li><a href="signup.aspx" class="active">Login/Signup</a></li>
              <li><a href="admin.aspx">Admin</a></li>
              <li><a href="contact.aspx">Contact Us</a></li> 
              <li><div class="main-white-button"><a href="#"><i class="fa fa-plus"></i> Book Your Ticket</a></div></li> 
            </ul>        
            <a class='menu-trigger'>
                <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
    </header>
    

 
    
    <div class="page-heading ">
      
      <div class="containern ">
        
        <div class="row">
          
          <div class="col-lg-20">
            <div class="top-text header-text">
<!-- 
            <a href="admin.html"> dua </a>
            <pre>f</pre>
            <a href="index.html"> kashif </a> -->
            

              <div class="containern">
                <input type="checkbox" id="flip">
                <div class="cover">
                  <div class="front">
                    
                  </div>
                  <div class="back">
                    <img class="backImg" src="99.png" alt="">
                    <div class="text">
                       </div>
                  </div>
                </div>
                <div class="forms">
                    <div class="form-contentn">
                      <div class="login-formn">
                        <div class="title">Login</div>
                          <form id="form1" runat="server">
                        <div class="input-boxes">
                          <div class="input-box">
                            <i class="fas fa-envelope"></i>
                              <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your username"></asp:TextBox>
                          </div>
                          <div class="input-box">
                            <i class="fas fa-lock"></i>
                              <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Password"></asp:TextBox>
                          </div>
                          <div class="text"><a href="#">Forgot password?
                              <br />

                              <br />
                              <asp:Button ID="Button1" runat="server" cssclass="newcss"  Text="LOGIN" OnClick="Button1_Click" />
                              <asp:Label ID="Label1" runat="server" Text="Email or password does not match !"></asp:Label>

                              </a></div>
                          <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
                        </div>

                         
                  </div>
                    <div class="signup-form">
                      <div class="title">Signup</div>
                    <form action="">

                          

                        <div class="input-boxes">
                          <div class="input-box">
                            <i class="fas fa-user"></i>
                              <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                          </div>
                          <div class="input-box">
                            <i class="fas fa-envelope"></i>
                              <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your email" ></asp:TextBox>
                          </div>
                          <div class="input-box">
                            <i class="fas fa-lock"></i>
                              <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Password"></asp:TextBox>
                          </div>
                          <div class="input-box">
                            <i class="fas fa-envelope"></i>
                                 <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Your cnic" ></asp:TextBox>
                          </div>
                           <div class="input-box">
                            <i class="fas fa-envelope"></i>
                                 <asp:TextBox ID="TextBox7" runat="server" placeholder="Gender" ></asp:TextBox>
                          </div>
                           <div class="input-box">
                            <i class="fas fa-envelope"></i>
                                 <asp:TextBox ID="TextBox8" runat="server"  placeholder="Enter Your Phone Number"></asp:TextBox>
                          </div>
                           <div class="input-box">
                            <i class="fas fa-envelope"></i>
                                 <asp:TextBox ID="TextBox9" runat="server"  placeholder="Enter Your Age"></asp:TextBox>
                          </div>
                           <div class="input-box">
                            <i class="fas fa-envelope"></i>
                                 <asp:TextBox ID="TextBox10" runat="server"  placeholder="Enter Your City"></asp:TextBox>
                          </div>
                           
                        <br />
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

                        <asp:Button ID="Button2" runat="server"  cssclass="newcss1" Text="SIGNUP" OnClick="Button2_Click" />
                             </form>
                          <div class="button input-box">


                            &nbsp;</div>
                           
                           
                           
                          
                          <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                        </div>
                  </form>
                </div>
                </div>
                </div>
              </div>


             </div>
          </div>
        </div>
      </div>
    </div>



  <!-- ***** Header Area End ***** -->

<style>
 
  .containern{
    position: relative;
    max-width: 900px;
    width: 100%;
    background: #fff;
    padding: 40px 30px;
    box-shadow: 0 5px 10px rgba(9, 109, 250, 0.2);
    perspective: 270px;
   
  }
  .containern .cover{
    position:absolute;
    top: 0;
    left: 50%;
    height: 100%;
    width: 50%;
    z-index: 98;
    transition: all 1s step-start;
    transform-origin: left;
    transform-style: preserve-3d;
  }
  .containern #flip:checked ~ .cover{
    transform: rotateY(-180deg);
  }
 

   .containern .cover .front,
   .containern .cover .back{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
  }
  .cover .back{
    transform: rotateY(180deg);
    backface-visibility: hidden;
  }
  .containern .cover::before,
  .containern .cover::after{
    content: '';
    position: absolute;
    height: 100%;
    width: 100%;
    background:#6aa7a1;
    opacity: 0.791;
  }
  .containern .cover::after{
    opacity: 0.3;
    transform: rotateY(180deg);
    backface-visibility: hidden;
  }
  .container .cover img{
    position: absolute;
    height: 100%;
    width: 100%;
    object-fit: cover;
    z-index: 10;
  }
  .containern .cover .text{
    position: absolute;
    z-index: 130;
    height: 100%;
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .cover .text .text-1,
  .cover .text .text-2{
    font-size: 26px;
    font-weight: 600;
    color: #ffffff;
    text-align: center;
  }
  .cover .text .text-2{
    font-size: 15px;
    font-weight: 500;
  }
  .containern .forms{
    height: 100%;
    width: 100%;
    background: #fff;
  }
  .containern .form-contentn{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .form-contentn .login-form,
  .form-contentn .signup-form{
    width: calc(100% / 2 - 25px);
  }
  .forms .form-contentn .title{
    position: relative;
    font-size: 24px;
    font-weight: 500;
    color: #333;
  }
  .forms .form-contentn .title:before{
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    height: 3px;
    width: 25px;
    background:#6aa7a1;
  }
  .forms .signup-formn  .title:before{
    width: 20px;
  }
  .forms .form-contentn .input-boxes{
    margin-top: 30px;
  }
  .forms .form-content .input-box{
    display: flex;
    align-items: center;
    height: 50px;
    width: 100%;
    margin: 10px 0;
    position: relative;
  }
  .form-contentn .input-box input{
    height: 100%;
    width: 100%;
    outline: none;
    border: none;
    padding: 0 30px;
    font-size: 16px;
    font-weight: 500;
    border-bottom: 2px solid rgba(0,0,0,0.2);
    transition: all 0.3s ease;
  }
  .form-contentn .input-box input:focus,
  .form-contentn .input-box input:valid{
    border-color:#6aa7a1;
  }
  .form-contentn .input-box i{
    position: absolute;
    color: #6aa7a1;
    font-size: 17px;
  }
  .forms .form-contentn .text{
    font-size: 14px;
    font-weight: 500;
    color: #333;
  }
  .newcss1{
      width:100%;
  }
  .forms .form-contentn .text a{
    text-decoration: none;
  }
  .forms .form-contentn .text a:hover{
    text-decoration: underline;
  }
  .forms .form-contentn .button{
    color: #fff;
    margin-top: 40px;
  }
  .forms .form-contentn .button input, .newcss,.newcss1{
    color: #fff;
    background: #6aa7a1;
    border-radius: 6px;
    padding: 0;
    cursor: pointer;
    transition: all 0.4s ease;

  }
  .forms .form-contentn .button input:hover{
    background:#6aa7a1;
  }
  .forms .form-contentn label{
    color: #6aa7a1;
    cursor: pointer;
  }
  .newcss{
      width:129%;
  }
  .forms .form-contentn label:hover{
    text-decoration: underline;
  }
  .forms .form-contentn .login-text,
  .forms .form-contentn .sign-up-text{
    text-align: center;
    margin-top: 25px;
  }
  .containern #flip{
    display: none;
  }
  @media (max-width: 730px) {
    .container .cover{
      display: none;
    }
    .form-contentn .login-form,
    .form-contentn .signup-form{
      width: 100%;
    }
    .form-contentn .signup-form{
      display: none;
    }
    .containern #flip:checked ~ .forms .signup-form{
      display: block;
    }
    .containern #flip:checked ~ .forms .login-form{
      display: none;
    }
  }
  
  </style>


  
  

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="about">
            <div class="logo">
              <img src="assets/images/black-logo.png" alt="">
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adicingi elit, sed do eiusmod tempor incididunt ut et dolore magna aliqua.</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="helpful-links">
            <h4>Helpful Links</h4>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><a href="#">Categories</a></li>
                  <li><a href="#">Reviews</a></li>
                  <li><a href="#">Listing</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Awards</a></li>
                  <li><a href="#">Useful Sites</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="contact-us">
            <h4>Contact Us</h4>
            <p>27th Street of New Town, Digital Villa</p>
            <div class="row">
              <div class="col-lg-6">
                <a href="#">010-020-0340</a>
              </div>
              <div class="col-lg-6">
                <a href="#">090-080-0760</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="sub-footer">
            <p>Copyright © 2021 Plot Listing Co., Ltd. All Rights Reserved.
            <br>
			Design: <a rel="nofollow" href="https://templatemo.com" title="CSS Templates">TemplateMo</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/animation.js"></script>
  <script src="assets/js/imagesloaded.js"></script>
  <script src="assets/js/custom.js"></script>

</body>

</html>

