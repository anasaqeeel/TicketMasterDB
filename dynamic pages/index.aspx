
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication4.index" %>

<!DOCTYPE html>
<script runat="server">
  
    
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) 
{
    
}


      <%--Protected  Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)--%>
   

    
    <%--Protected Sub Button1_Click(sender As Object, e As EventArgs)--%>

  
   
</script>


<html lang="en">

  
  <head>


                      <style>

                          .css1{
        border-style: none;
        border-color: inherit;
        border-width: medium;
        margin-right: 10px;
        background-size: 200% auto;
        background-position: 0% 50%;
        padding: 15px;
        color:#000000;
        font-size: 15px;
        height:47px;
        border-top-right-radius: 7px;
        border-bottom-right-radius: 7px;

         background-color: #fff;
  padding: 1px 0px 0px 30px;
  width: 100%;
  border-radius: 7px;
  display: inline-block;
  text-align: center;
    }
                          .css2{


                                border-style: none;
                              border-color: inherit;
                              border-width: medium;
                              width: 100%;
                              background-size: 200% auto;
                              background-position: 0% 50%;
                              padding: 15px;
                              color: #000000;
                              font-size: 15px;
                              border-top-right-radius: 7px;
                              border-bottom-right-radius: 7px;
                          }


    .dropdown-lists {
        display:grid;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: center;
    }
</style>




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

TemplateMo 564 TicketMaster

https://templatemo.com/tm-564-plot-listing

-->
  </head>

<body>

    <form id="form1" runat="server">

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
              <li><a href="index.aspx" class="active">Home</a></li>
              <li><a href="signup.aspx">Login/Signup</a></li>
              <li><a href="admin.aspx">Admin</a></li>
              <li><a href="contact.aspx">Contact Us</a></li> 
              <li><div class="main-white-button"><a href="#"><i class="fa fa-plus"></i> Book Your Seat!</a></div></li> 
            </ul>        
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="main-banner">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="top-text header-text">
            <h6>Go Anywhere, Anytime: Book Your Tickets Now!</h6>
            <h2 class="text-focus-in ">Discover Nearby Travel Destinations And Adventures</h2>
              <fieldset>
                  <div class="dropdown-lists">
                      <fieldset>
                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                          <asp:DropDownList ID="DropDownList1" cssclass="css1" AutoPostBack="True" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type" Width="162px">
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" cssclass="css1" runat="server"  AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="vehicle_name" DataValueField="vehicle_name" Height="46px" Width="199px">
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList2" cssclass="css1" value="as" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="from_location" DataValueField="from_location" Width="288px">
                          </asp:DropDownList>
       
                          &nbsp;&nbsp;&nbsp;
       
                          <asp:DropDownList ID="DropDownList3" cssclass="css1"  runat="server" DataSourceID="SqlDataSource3" DataTextField="to_location" DataValueField="to_location" Width="229px" AutoPostBack="True">
                          </asp:DropDownList>
        &nbsp;




                          <asp:Button ID="Button1" runat="server"  CssClass="css2" OnClick="Button1_Click" Text="BOOK NOW!" Width="448px" />
                          <asp:DropDownList ID="DropDownList5" cssclass="css1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="time" DataValueField="time" Height="27px" Width="205px">
                          </asp:DropDownList>
                          <br />
                          <br />
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="GetToLocationsByVehicleType" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList4" Name="vehicleName"  Type="String" PropertyName="SelectedValue" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="GetTimeSlot" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList2" Name="from_location" PropertyName="SelectedValue" Type="String" />
                                  <asp:ControlParameter ControlID="DropDownList3" Name="to_location" PropertyName="SelectedValue" Type="String" />
                                  <asp:ControlParameter ControlID="DropDownList4" Name="name" PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="get_vehicle_names" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList1" Name="type" PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          <asp:SqlDataSource ID="SqlDataSource1"   runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="select v.type from [vehicle] v group by v.type"></asp:SqlDataSource>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TicketMasterDBConnectionString %>" SelectCommand="GetFromLocationsByVehicleType" SelectCommandType="StoredProcedure">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList4" Name="vehicleName" PropertyName="SelectedValue" Type="String" DefaultValue="" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </fieldset></div>
              </fieldset>
          </div>
        </div>
          </div>
          </form>
        </div>
        <div class="col-lg-10 offset-lg-1">
          <ul class="categories">
            <li><a href="#"><span class="icon"><img src="assets/images/search-icon-03.png" alt="Vehicle"></span> Trains</a></li>
            <li><a href="#"><span class="icon"><img src="assets/images/search-icon-04.png" alt="Bus"></span> Bus</a></li>
            <li><a href="#"><span class="icon"><img src="assets/images/search-icon-05.png" alt="Travel"></span> Air Travel</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>


  <div class="popular-categories">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2>Our Services</h2>
            <h6>Check Them Out</h6>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="naccs">
            <div class="grid">
              <div class="row">
                <div class="col-lg-3">
                  <div class="menu">
                    <!-- <div class="first-thumb active">
                    </div> -->
                    
                      <div class="thumb">                 
                        <span class="icon"><img src="assets/images/search-icon-03.png" alt=""></span>
                        Train
                      </div>
                    
                    <!-- <div> -->
                      <div class="thumb">                 
                        <span class="icon"><img src="assets/images/search-icon-04.png" alt=""></span>
                        Bus
                      <!-- </div> -->
                    </div>
                    <div class="last-thumb">
                      <div class="thumb">                 
                        <span class="icon"><img src="assets/images/search-icon-05.png" alt=""></span>
                        Air Travel
                      </div>
                    </div>
                  </div>
                </div> 
                <div class="col-lg-9 align-self-center">
                  <ul class="nacc">
                    <li class="active">
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Fast and Convenient Train Ticket Booking!</h4>
                                <p>Experience hassle-free travel with our premium train ticket booking services. We offer the best deals on train tickets for your next business trip or leisurely vacation. Choose from a range of ticket options and book with ease. Let us help you plan your next adventure!.</p>
                                <div class="main-white-button"><a href="#"><i class="fa fa-eye"></i> Discover More</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="assets/images/tabs-image-01.jpg" alt="">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Get the Best Deals on Bus Tickets!</h4>
                                <p>Experience hassle-free travel with our premium bus services. Whether you're planning a family vacation or a business trip, we offer the best for your needs. Enjoy comfort, convenience, and affordability with us.</p>
                                <div class="main-white-button"><a href="#"><i class="fa fa-eye"></i> Explore More</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="assets/images/tabs-image-02.jpg" alt="Foods on the table">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Easy and Affordable Flight Ticket Booking!</h4>
                                <p>Book your next flight hassle-free with our user-friendly booking system. We offer the best deals on flights for your business or leisure travel. Let us take care of your travel needs and help you reach your destination in comfort and style.</p>
                                <div class="main-white-button"><a href="admin.aspx"><i class="fa fa-eye"></i> View More</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="assets/images/tabs-image-03.jpg" alt="cars in the city">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>          
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- popular categories! -->
  <div class="recent-listing">
  </div>


  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="about">
            <div class="logo">
              <img src="assets/images/black-logo.png" alt="TicketMaster">
            </div>
            
            <p>Contact our customer service <a rel="nofollow" href="https://templatemo.com/tm-564-TicketMaster" target="_parent">team if you have any questions or concerns. </a> Thank you for choosing <a rel="nofollow" href="https://www.paypal.me/templatemo" target="_blank">our website for your travel needs!</a></p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="helpful-links">
            <h4>Helpful Links</h4>
            <div class="row">
              <div class="col-lg-6 col-sm-6">
                <ul>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Reviews</a></li>
                  <li><a href="#">Admin</a></li>
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
            <p>Copyright © 2021 TicketMaster Co., Ltd. All Rights Reserved.
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

    </form>

</body>

</html>



