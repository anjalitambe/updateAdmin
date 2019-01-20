<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>EMI Shop | Register Page</title>
    
    <!-- Font awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="${pageContext.request.contextPath}/resources/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

  </head>
  <body>
  
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <a href="index.html">
                  <span class="fa fa-shopping-cart"></span>
                  <p>EMI<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                </a>
              </div>                   
              <!-- search box -->
              <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="Search here ex. 'sarees' ">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->             
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->
  <!-- menu -->
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <div class="aa-header-top-center">
            <ul class="nav navbar-nav">
              <li style="float:right"><a href="index.html">Home</a></li>
              <li style="float:right"><a href="register.html" >Register</a></li>     
              <li style="float:right"><a href="login.html">Login</a></li>
              <li style="float:right"><a href="contact.html">Contact</a></li>
              <li class="hidden-xs" style="float:right"><a href="login.html">Products</a></li>
           </ul>
          </div><!--/.nav-collapse -->
      </div>
      </div> 
      </div>
    </div>
  </section>
  <!-- / menu -->  

 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">    
              <div class="container">
                  <h4>Register</h4>
                  <form:form action="RegisterFormsSpring" modelAttribute="customer" method="post"><br>

                <div class="row">
                  <div class="col-25">
                    <label for="fname">First Name<span style="color: red">*</span></label>
                  </div>
                  <div class="col-75">
                    <form:input path="firstName" type="text" id="fname" name="firstname" placeholder="Firstname"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="lname">Last Name<span style="color: red">*</span></label>
                  </div>
                  <div class="col-75">
                    <form:input path="lastName" type="text" id="lname" name="lastname" placeholder="Lastname"/>
                  </div>
                </div>
                <div class="row">
                    <div class="col-25">
                      <label for="DOB">Date of Birth<span style="color: red">*</span></label>
                    </div>
                    <div class="col-75">
                      <form:input  path="dob" type="text" id="DOB" name="Date of Birth" placeholder="DD-MON-YY"/>
                    </div>
                  </div>
                  
                    <div class="row">
                        <div class="col-25">
                          <label for="Email">Email Address<span style="color: red">*</span></label>
                        </div>
                        <div class="col-75">
                          <form:input  type="email" path="email" id="Email" name="Email Address" placeholder="Email Address"/>
                        </div>
                      </div>
                      <div class="row">
                          <div class="col-25">
                            <label for="Mob.no.">Mobile Number<span style="color: red">*</span></label>
                          </div>
                          <div class="col-75">
                            <form:input path="phoneNumber"  type="tel" id="Mob.no." name="Mobile Number" placeholder="Mobile Number"/>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-25">
                              <label for="Password">Password<span style="color: red">*</span></label>
                            </div>
                            <div class="col-75">
                              <form:input type="password" path="password"  id="Password" name="Password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
           title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
            required="required"/>
                            </div>
                          </div>
                          <div class="row">
                              <div class="col-25">
                                <label for="ConfirmPassword">Confirm Password<span style="color: red">*</span></label>
                              </div>
                              <div class="col-75">
                                <form:input type="password" path="" id="ConfirmPassword" name="Password" placeholder="Password"/>
                              </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                  <label for="Gender">Gender<span style="color: red">*</span></label>
                                </div>
                                <form:radiobutton  path="gender"  value="Male" id="radio1" name="radios1" />
                                <label for="radio1">Male</label>
                                <form:radiobutton  path="gender"  value="Female" id="radio2" name="radios2"/>
                                <label for="radio2">Female</label>
                                <form:radiobutton  path="gender"  value="Other" id="radio3" name="radios3"/>
                                <label for="radio3">Other</label>
                              </div>
                              <div class="row">
                                  <div class="col-25">
                                    <label for="address">Address<span style="color: red">*</span></label>
                                  </div>
                                  <div class="col-75">
                                    <textarea id="address" name="address" placeholder="Address" style="height:200px"></textarea>
                                  </div>
                                </div>
                                <div class="row">
                                    <div class="col-25">
                                      <label for="city">City</label>
                                    </div>
                                    <div class="col-75">
                                      <form:input path="address.city" type="text" id="city" name="city" placeholder="city"/>
                                    </div>
                                  </div>
                                  <div class="row">
                                      <div class="col-25">
                                        <label for="pincode">Pincode</label>
                                      </div>
                                      <div class="col-75">
                                        <form:input type="number" path="address.pincode" id="pincode" name="Pincode" placeholder="pincode"/>
                                      </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                          <label for="state">State</label>
                                        </div>
                                        <div class="col-75">
                                          <form:input path="address.state" type="text" id="state" name="State" placeholder="State"/>
                                        </div>
                                      </div>
                                      <div class="row">
                                          <div class="col-25">
                                            <label for="country">Country<span style="color: red">*</span></label>
                                          </div>
                                          <div class="col-75">
                                            <form:input path="address.country" type="text" id="country" name="Country" placeholder="Country"/>
                                          </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-25">
                                              <label for="cardtype">Card Type<span style="color: red">*</span></label>
                                            </div>
                                            <form:radiobutton  path="card.cardType"  value="Gold" name="radios4" />
                                            
                                            <label for="radio1">Gold</label>
                                            <form:radiobutton  path="card.cardType"  name="radios5"  value="Titanium"/>
                                            <label for="radio2">Titanium</label>
                                            
                                          </div>
                <div class="row">
                  <div class="col-25">
                    <label for="Bank">Select Bank<span style="color: red">*</span></label>
                  </div>
                  <div class="col-75">
                  <form:select path="bank.bankName" id="Bank" name="Banks">
                    
                      <form:option value="HDFC">HDFC</form:option>
                      <form:option value="HSBC">HSBC</form:option>
                      <form:option value="SBI">SBI</form:option>
                      <form:option value="PNB">PNB</form:option>
                      <form:option value="ICICI">ICICI</form:option>
                      <form:option value="KOTAK">KOTAK</form:option>
                    </form:select>
                  </div>
                </div>
                <div class="row">
                    <div class="col-25">
                      <label for="accountnumber">Bank Account Number<span style="color: red">*</span></label>
                    </div>
                    <div class="col-75">
                      <form:input type="number" path="bank.savingsAccNo"  id="accountnumber" name="accountnumber" placeholder="accountnumber"/>
                    </div>
                  </div>
                  <div class="row">
                      <div class="col-25">
                        <label for="IFSCCode">IFSC Code<span style="color: red">*</span></label>
                      </div>
                      <div class="col-75">
                        <form:input path="bank.IFSCCode"  type="text" id="IFSCCode" name="IFSC Code" placeholder="IFSC Code"/>
                      </div>
                    </div>
                
                <div class="row">
                    <button type="submit" style="text-align: center" class="aa-browse-btn">Register</button>  
                    <button type="submit"  style="text-align: center" class="aa-browse-btn">Reset</button>   <br><br>   
                </div>
                 </form:form>
              </div>
              
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

  <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Our Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Knowledge Base</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Delivery</a></li>
                      <li><a href="#">Returns</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Discount</a></li>
                      <li><a href="#">Special Offer</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Site Map</a></li>
                      <li><a href="#">Search</a></li>
                      <li><a href="#">Advanced Search</a></li>
                      <li><a href="#">Suppliers</a></li>
                      <li><a href="#">FAQ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 25 Astor Pl, NY 10003, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p style="text-align: center">Terms and conditions apply</p>           
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="account.html">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>


    
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="${pageContext.request.contextPath}/resources/js/sequence.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script> 
  

  </body>
</html>