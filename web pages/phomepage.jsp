<%-- 
    Document   : phomepage
    Created on : 11 Oct, 2023, 1:22:40 PM
    Author     : Najmin Shaikh
--%>
<%@include file="connect.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title></title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
       <%
           String pnm=(String)session.getAttribute("pnm1");
           
       %>
      <!-- loader  -->
      <div class="loader_bg">
          <div class="loader"><img src="images/l3.png" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                          <div class="logo">
                              <a href="index.html"><img src="images/l3.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                  <a class="nav-link" href="phomepage.jsp"> Home  </a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="psearchvehi.jsp">SearchVechile</a>
                              </li>
                               <li class="nav-item">
                                   <a class="nav-link" href="pbsearch.jsp">BookingSearchVehicle</a>
                              </li>
                              
                              <li class="nav-item">
                              <a class="nav-link" href="contactpg.jsp">Contact Us</a>
                              </li>
                              
                               <li class="nav-item">
                                 <a class="nav-link" href="feedback.jsp">FeedBack</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="mainhp.jsp">LogOut</a>
                              </li>
                              
                             
                              
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
            Passenger Name=<%=pnm%>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
      <section class="banner_main">
         <div id="banner1" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#banner1" data-slide-to="0" class="active"></li>
               <li data-target="#banner1" data-slide-to="1"></li>
               <li data-target="#banner1" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container-fluid">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1>Welcome</h1>
                                 <span>vehical rental services</span>
                                 <p>Welcome to our rental service! We are delighted to have you join our community of satisfied renters. Whether you're in need of a vehicle, equipment, or a cozy place to stay, we're here to make your rental experience smooth and hassle-free.With a wide range of options and top-notch customer service, we're committed to meeting your needs and exceeding your expectations. 
                                     Thank you for choosing us for your rental needs, and we're excited to embark on this journey with you. 
                                 </p>
                                 
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/n1.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               
               <div class="carousel-item">
                  <div class="container-fluid">
                     <div class="carousel-caption">
                        <div class="row">
                           <div class="col-md-6">
                              <div class="text-bg">
                                 <h1>Book now</h1>
                                 <span>book your vehical</span>
                                 <p>Book now with our vehicle rental service and embark on your next adventure with ease! We offer a convenient and reliable solution for your transportation needs. With a few simple clicks, you can secure the perfect vehicle for your journey, whether it's a family road trip, a business meeting, or a weekend getaway.
                                     Don't wait - book now and enjoy the freedom and flexibility our rental service provides. Your travel plans are just a reservation away!
                                 </p>
                                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="text_img">
                                 <figure><img src="images/n2.png" alt="#"/></figure>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </a>
            <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
         </div>
      </section>
      <!-- end banner -->
      <!-- three_box -->
      <div class="three_box">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="box_text">
                     <h3>CAR</h3>
                     <i><img src="images/thr.png" alt="#"/></i>
                     <p>You book a car for easimate amount you will pay for the travelling </p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text">
                     <h3>Fuel</h3>
                     <i><img src="images/thr1.png" alt="#"/></i>
                     <p>Comparesed natural gas and liquiefied natural gas are used in bike and cars.We use renewable diesel</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="box_text">
                     <h3>WHEELS</h3>
                     <i><img src="images/thr2.png" alt="#"/></i>
                     <p>It support the vehical loads,transmitting traction and braking forces to the road surface and maintaining the direction</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- three_box -->
      <!-- about -->
      <!--<div  class="about">-->
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>About Our Vehical Rental Service </h2>
                  </div>
               </div>
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-md-10 offset-md-1">
                     <!--<div class="about_img">-->
                        <div class="about_box">
                            <h3><center><b>Introduce about our service </b></center></h3>
                           <p>We developed this application to book a car on rent at the fare charges. In present system all booking work done manually and it takes very hard work to maintain the information of booking and cars. If you want to find which vehicle is available for booking then it takes a lot of time. It only makes the process more difficult and hard.
                               This aim of the application is to automate the work performed in the all vehicals rental management system like generating daily bookings, records of car or cab available for booking.
                               You can pay using debit or credit cards or you can also pay by cash for our service.Our system also give facility of panic Button for emergency purpose.
                               Our vehical rental management system provides a total solution to the field of auto rental industry. The idea behind the proposed website is to develop a system that allows customers to rent any vehicle as per their needs on the selected date for required time and in any of the selected cities.
                           </p>
                        </div>
                     <!--</div>-->
                  </div>
               </div>
            </div>
         </div>
      <!--</div>-->
      <!-- end about -->
      <!-- wedo  section -->
      <div class="wedo ">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>What We Do</h2>
                     <p>See the images of our vehicals and let,s book it... </p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="row">
                     <div class="col-md-6 margin_bottom">
                        <div class="work">
                           <figure><img src="images/p1.png" alt="#" /></figure>
                        </div>
                        <div class="work_text">
                           <h3>Rental Service<br><span class="blu">Book Now</span></h3>
                        </div>
                     </div>
                     <div class="col-md-6 margin_bottom">
                        <div class="work">
                           <figure><img src="images/p2.png" alt="#" /></figure>
                        </div>
                        <div class="work_text">
                           <h3>Rental Service<br><span class="blu">Book Now</span></h3>
                        </div>
                     </div>
                     <div class="col-md-6 margin_bottom">
                        <div class="work">
                           <figure><img src="images/p3.png" alt="#" /></figure>
                        </div>
                        <div class="work_text">
                           <h3>Rental Service<br> <span class="blu">Book Now</span></h3>
                        </div>
                     </div>
                     <div class="col-md-6 margin_bottom">
                        <div class="work">
                           <figure><img src="images/p4.png" alt="#" /></figure>
                        </div>
                        <div class="work_text">
                           <h3>Renatal Service<br><span class="blu">Book Now</span></h3>
                        </div>
                     </div>
                  </div>
                  <a class="read_more" href="#">Let's satart your jouney !!!!</a>
               </div>
            </div>
         </div>
      </div>
      <!-- end wedo  section -->
      <!-- testimonial -->
      <div class="testimonial">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Feedback</h2>
                     <p>It is the feedback of our passenger who enjoy her journey with us </p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide testimonial_Carousel " data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container">
                              <div class="carousel-caption ">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                           <i><img src="images/nm6.jpg" alt="#"/></i>
                                          <h4>JAY</h4>
                                          <span>(SAMBHAJINAGAR)</span>
                                          <p>Overall, my experience with the vehicle rental service was good, but there is room for improvement. The communication. I encountered a few surprises regarding additional fees that were not clearly explained upfront. </p>
                                       </div>
                                    </div>
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                           <i><img src="images/nm5.jpg" alt="#"/></i>
                                          <h4>RANI</h4>
                                          <span>(Pune)</span>
                                          <p>I had a positive experience with the vehicle rental service. The vehicle was clean, and the staff was helpful and accommodating. However, I suggest implementing a more user-friendly online reservation system </p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <i><img src="images/nm1.jpg" alt="#"/></i>
                                          <h4>JIYA</h4>
                                          <span>(Sangli)</span>
                                          <p>I booked a cab for Mahabaleshwar trip from Reliable Car. Driver was very good and decent.Cab arrived on time. Cab was spacious and good condition.Overall it was a really good experience. </p>
                                       </div>
                                    </div>
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <i><img src="images/nm2.jpg" alt="#"/></i>
                                          <h4>RAHUL</h4>
                                          <span>(Satara )</span>
                                          <p>I had booked a car from Mumbai to Lonavala trip from Reliable Car the price is really affordable and good had really nice and friendly service. The driver was very helpful and polite, the car was clean and worked fine.</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <i><img src="images/nm3.jpg" alt="#"/></i>
                                          <h4>RIYA</h4>
                                          <span>(Karad )</span>
                                          <p>It's wonderful service and excellent communication with the customer.We can feel safe travel with this service and we enjoyed our jounry with happy.  </p>
                                       </div>
                                    </div>
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <i><img src="images/nm4.jpg" alt="#"/></i>
                                          <h4>RAM</h4>
                                          <span>(Kholapur )</span>
                                          <p>I have been prefer this rental car service.Because they are reliable,helpful and convivial.Their consistently high level of sevice and easy to pay.this vehicals are so comfortable. Thanks!! </p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end testimonial -->
      </div>
      <!--  footer -->
      <footer id="contact">
         <div class="footer">
            
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>Developed by Najmin and Tejaswini </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
   </body>
</html>