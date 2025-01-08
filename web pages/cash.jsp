<%-- 
    Document   : billing
    Created on : 14 Feb, 2024, 9:43:17 PM
    Author     : Najmin Shaikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="connect.jsp"%>
<%@page import="java.io.*" %>


<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>mical</title>
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
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <script language="javascript">
        function editRecord(id)
        {
            var f = document.form;
            f.method="post";
            f.action='ppayment.jsp?id='+id;
            f.submit();
        }
    </script>    
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      
      <%
       String mn1=(String)session.getAttribute("mn2");
           
      %>
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
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
                                  <a class="nav-link" href="psearchvehi.jsp">SearchVehicle</a>
                              </li>
                               <li class="nav-item">
                                   <a class="nav-link" href="pbsearch.jsp">BookingSearchVehicle</a>
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
           Passenger Name=<%=mn1%>
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
                                 <p> Welcome to our rental service! We are delighted to have you join our community of satisfied renters. Whether you're in need of a vehicle, equipment, or a cozy place to stay, we're here to make your rental experience smooth and hassle-free.With a wide range of options and top-notch customer service, we're committed to meeting your needs and exceeding your expectations.
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
      <div  class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Make the most of the every moment with our trusted vehical rental service !!!!!! </h2>
                  </div>
               </div>
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-md-10 offset-md-1">
                     <div class="about_img">
                        <div class="about_box">
                           <h3 colspan='5'>Cash on pay</h3>
                           
               
              <form method="post" name="form">

                               <table border="2" align="center" width="500px" height='350px' style="background-color: #ffffff">
                                      <tbody>
                                       <tr>
                                           <td>Booking Id</td>
                                           <td><%=mn1%></td>
                                       </tr>
                                     <%
                                         String bd= null;
                                         String fnm= null;
                                         String vtype= null;
                                         String mob= null;
                                         int kms=0;
                                         int amt=0;
                                         
                                        Statement st=con.createStatement();
                                        String str="select * from ppayment where id="+mn1+"";
                                        ResultSet rs=st.executeQuery(str);
                                        while(rs.next())
                                        {
                                         bd=rs.getString(2);
                                         fnm=rs.getString(3);
                                        mob=rs.getString(4);
                                         vtype=rs.getString(5);
                                         kms=rs.getInt(6);
                                         amt=rs.getInt(7);
                                         
                                        }
                      
                               %>
                                   
                                       <tr>
                                           <td>Booking Date</td>
                                           <td><%=bd%></td>
                                       </tr>
                                       <tr>
                                           <td>Passenger Name</td>
                                           <td><%=fnm%></td>
                                       </tr>
                                       
                                      
                                       
                                       <tr>
                                           <td>Vehicle Type</td>
                                           <td><%=vtype%></td>
                                       </tr>
                                       
                                       <tr>
                                           <td>Kms</td>
                                           <td><%=kms%></td>
                                       </tr>
                                       
                                       <tr>
                                           <td> Total Rent</td>
                                           <td><%=amt%></td>
                                       </tr>
                                       
                                       
                                       
                                     
                                     
                                       <%
                                     
                                   
                                                                                         
       Statement st2=con.createStatement();
      
      if(bd!=null && bd!="" && fnm!=null && fnm!="" && mob!=null && mob!="" && vtype!=null && vtype!="")
       {
      String str2="insert into cash(id,booking_date,Full_name,mobile_number,vehicle_type,kms,rent)values("+mn1+",'"+bd+"','"+fnm+"',"+mob+",'"+vtype+"',"+kms+","+amt+")";
      int a=st2.executeUpdate(str2);
    //  out.println("<script>alert('Payment Succesfully......')</script>");     
       }
                       %>   
                                   </tbody>
                               </table>

                           </form>
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end about -->
      <!-- wedo  section -->
      
      <!-- end wedo  section -->
      <!-- testimonial -->
      <div class="testimonial">
         <div class="container">
            
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide testimonial_Carousel " data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     
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