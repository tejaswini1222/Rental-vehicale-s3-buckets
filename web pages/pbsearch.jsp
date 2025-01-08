<%-- 
    Document   : pbsearch
    Created on : 5 Feb, 2024, 10:20:47 AM
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
            f.action='cancleb.jsp?id='+id;
            f.submit();
        }
    </script>    
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      
      <%
       String pnm=(String)session.getAttribute("pnm1");
           
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
                           <h3 colspan='5'>Search Booking Vehicle</h3>
                           
               
              <form method="post" name="form">

                               <table border="2" align="center" width="500px" height='350px' style="background-color: #ffffff">
                                     <tbody>
                                         <%
                                         String fnm1=null;
                                            Statement st1=con.createStatement();
                                            String str1="select * from pregister where Username='"+pnm+"'";
                                            ResultSet rs1=st1.executeQuery(str1);
                                            while(rs1.next())
                                            {
                                       fnm1=rs1.getString(2);
                                            }
                                         %>
                                       <tr>
                                             <td>Full Name</td>
                                             <td><%=fnm1%>
                                                   </td>
                                                <td colspan="2">Booking Date</td>
                                                <td colspan="2"><input type="date" name="txtbid" value="" />
                                                   </td>
                                       </tr>
                                   
                                   
                                     
                                       <tr>
                                           <td colspan="12" align="center"><input type="submit" value="Search" name="Search" /></td>
                                           
                                              
                                       </tr>
                                       <tr>
                                           <td>Booking Id</td><td>Booking Date</td><td>Full Name</td><td>Mobile Number</td><td>Vehicle Id</td><td>Vehicle Type</td><td>Vehicle Company</td><td>Model Type</td><td>Oil Type</td><td>Total Seats</td><td>Return Date</td>                                       </tr>
                               <%
                              
                               int bid=0;
                               
                               String fnm=null;
                               String mob=null;
                               int vid=0;
                               String vtype=null;
                               String vcom=null;
                               String mtype=null;
                               String otype=null;
                               int seat=0;
                               String rdate=null;
                               
                               String bdate= request.getParameter("txtbid");
                            
      Statement st=con.createStatement();
      if(bdate!=null && bdate!="")
      {
       
       String str="select * from finalbooking where Full_name='"+fnm1+"' and Booking_date='"+bdate+"'";
       ResultSet rs=st.executeQuery(str);
      
       
   while(rs.next())
   {
          out.println("asdfg="+bdate);
       bid=rs.getInt(1);
       bdate=rs.getString(2);
       fnm=rs.getString(3);
       mob=rs.getString(4);
       vid=rs.getInt(5);
       vtype=rs.getString(6);
       vcom=rs.getString(7);
       mtype=rs.getString(8);
       otype=rs.getString(9);
       seat=rs.getInt(10);
       rdate=rs.getString(11);
              
                               %>
                                       <tr><td><%=bid%></td><td><%=bdate%></td><td><%=fnm%></td><td><%=mob%></td><td><%=vid%></td><td><%=vtype%></td><td><%=vcom%></td><td><%=mtype%></td><td><%=otype%></td><td><%=seat%></td><td><%=rdate%></td>
                                       </td>
                                       <td align="center"><input type="button"name="Cancel Booking" value="Cancel Booking"style="background-color: cornflowerblue;font-weight: bold;color: white;"onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>
                              
                               <%
   }
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