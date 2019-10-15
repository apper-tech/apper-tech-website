<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="true" Inherits="DynamicServices.Default" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head runat="server">
    <title>
        <asp:Literal runat="server" Text='<%# Data["Title"] %>'></asp:Literal></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
    <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
    <link rel="stylesheet" href="css/reset.css">

    <!-- skin -->
    <link rel="stylesheet" href="skin/default.css">
    <!-- =======================================================
            Theme Name: Amoeba
            Theme URL: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/
            Author: BootstrapMade
            Author URL: https://bootstrapmade.com
        ======================================================= -->
</head>
<body>
    <form id="form1" runat="server">

        <section id="header" class="appear"></section>
        <div class="navbar navbar-fixed-top" role="navigation" data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:60px; background-color:rgba(0,0,0,1);">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="fa fa-bars color-white"></span>
                    </button>
                    <h1><a class="navbar-brand" href="/" data-0="line-height:90px;" data-300="line-height:50px;">
                        <img src="img/logo.png" style="width: 40px" />
                        <asp:Literal runat="server" Text='<%# Data["SiteName"] %>'></asp:Literal>
                    </a></h1>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
                        <li><a href="#">
                            <asp:Image runat="server" Visible="false" ID="langimg" Width="24" Height="24" ImageUrl="/img/sa.png" />
                            <asp:Button runat="server" Visible="false" ID="langbtn" CssClass="btn-lang" Text="AR" OnClick="langbtn_Click"></asp:Button></a></li>
                        <li class="active"><a href="#main">
                            <asp:Literal runat="server" Text='<%# Data["Home"] %>'></asp:Literal></a></li>
                        <li><a href="#section-services">
                            <asp:Literal runat="server" Text='<%# Data["Product"] %>'></asp:Literal></a></li>
                        <li><a href="#section-about">
                            <asp:Literal runat="server" Text='<%# Data["About"] %>'></asp:Literal></a></li>
                        <li><a href="#section-contact">
                            <asp:Literal runat="server" Text='<%# Data["Contact"] %>'></asp:Literal></a></li>
                    </ul>
                </div>
                <!--/.navbar-collapse -->
            </div>
        </div>

        <section id="main" class="featured">
            <div class="container">
                <div class="row mar-bot40">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="align-center">
                            <img src="img/logo.png" style="width: 140px" class="glow" />
                            <section class="cd-intro">
                                <h2 class="slogan cd-headline letters type">
                                    <span>We App</span>
                                    <span class="cd-words-wrapper waiting">
                                        <b class="is-visible">the</b>
                                        <b>a great</b>
                                        <b>a new</b>
                                        <b>your</b>
                                    </span>
                                    <span>Tech</span>
                                </h2>
                            </section>
                            <p>
                                <asp:Literal runat="server" Text='<%# Data["SiteSlogan_Desc"] %>'></asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- services -->
        <section id="section-services" class="section pad-bot30 bg-white">
            <div class="container">

                <div class="row mar-bot40">
                    <div class="col-lg-4">
                        <div class="align-center">
                            <i class="fa fa-bolt fa-5x mar-bot20"></i>
                            <h4 class="text-bold pad-bot10">
                                <asp:Literal runat="server" Text='<%# Data["Speed"] %>'></asp:Literal></h4>
                            <p class="lineheight-3">
                                <asp:Literal runat="server" Text='<%# Data["Speed_Desc"] %>'></asp:Literal>
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="align-center">
                            <i class="fa fa-lightbulb-o fa-5x mar-bot20"></i>
                            <h4 class="text-bold pad-bot10">
                                <asp:Literal runat="server" Text='<%# Data["Create"] %>'></asp:Literal></h4>
                            <p class="lineheight-3">
                                <asp:Literal runat="server" Text='<%# Data["Create_Desc"] %>'></asp:Literal>
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="align-center">
                            <i class="fa fa fa-briefcase fa-5x mar-bot20"></i>
                            <h4 class="text-bold pad-bot10">
                                <asp:Literal runat="server" Text='<%# Data["HardWork"] %>'></asp:Literal></h4>
                            <p class="lineheight-3">
                                <asp:Literal runat="server" Text='<%# Data["HardWork_Desc"] %>'></asp:Literal>
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        

        <!-- team -->
        <section id="section-about" class="section appear clearfix">
            <div class="container">

                <div class="row mar-bot40">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="section-header">
                            <h2 class="section-heading animated" data-animation="bounceInUp">
                                <asp:Literal runat="server" Text='<%# Data["Team"] %>'></asp:Literal></h2>
                            <p class="section-title ">
                                <asp:Literal runat="server" Text='<%# Data["Team_Desc"] %>'></asp:Literal></p>
                        </div>
                    </div>
                </div>

                <div class="row align-center mar-bot40 ">
                    <div class="col-md-4">
                        <div class="team-member">
                            <figure class="member-photo">
                                <img src="img/team/member1.png" alt="" style="width: 250px;" />
                            </figure>
                            <div class="team-detail">
                                <h4>Mh Altabba</h4>
                                <span>General Manager</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team-member">
                            <figure class="member-photo">
                                <img src="img/team/member2.png" alt="" style="width: 250px;" />
                            </figure>
                            <div class="team-detail">
                                <h4>Mh Mazen</h4>
                                <span>Web developer</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="team-member">
                            <figure class="member-photo">
                                <img src="img/team/member3.png" alt="" style="width: 250px;" />
                            </figure>
                            <div class="team-detail">
                                <h4>Qamar Alzaman Hafez</h4>
                                <span>Creative director</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- /team -->
        
        <!-- spacer section:company -->
        <section id="parallax1" class="section pad-top40 pad-bot40" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="align-center pad-top20 pad-bot20">
                    <blockquote class="bigquote color-white">
                        <asp:Literal runat="server" Text='<%# Data["Company_Ltd"] %>'></asp:Literal></blockquote>
                    <p class="color-white">
                        <asp:Literal runat="server" Text='<%# Data["Company_Ltd_Desc"] %>'></asp:Literal></p>
                </div>
            </div>
        </section>
        <!--spacer section:project-->
        <section id="spacer00" class="section clearfix">
             <div class="container">

                <div class="row mar-bot40">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="section-header">
                            <h2 class="section-heading animated" data-animation="bounceInUp">
                                <asp:Literal runat="server" Text='<%# Data["Project"] %>'></asp:Literal></h2>
                            </div></div></div></div>
        </section>
         <!--spacer -->
        <section id="spacer01" class="section clearfix"></section>
         <!-- spacer section:investorX -->
        <section id="parallax5" class="section parallax " data-stellar-background-ratio="0.5">
          <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["InvestorX_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://investorx.io">www.investorx.io</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
         <!--spacer -->
        <section id="spacer01" class="section clearfix"></section>
         <!-- spacer section:SurveyX -->
        <section id="parallax6" class="section parallax " data-stellar-background-ratio="0.5">
          <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["SurveyX_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://surveyx.io/">www.surveyx.io</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
        <!--spacer -->
        <section id="spacer01" class="section clearfix"></section>
        <!-- spacer section:akaratak -->
        <section id="testimonials" class="section" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["Akaratak_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://www.akaratak.com">www.akaratak.com</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
        <!--spacer -->
        <section id="spacer01" class="section clearfix"></section>
       <!-- spacer section:hajernet -->
        <section id="parallax2" class="section parallax " data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["Hajer_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://www.Hajerint.com">www.Hajerint.com</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
          <!--spacer -->
         <section id="spacer01" class="section clearfix"></section>
         <!-- spacer section:qutuf -->
        <section id="parallax3" class="section parallax " data-stellar-background-ratio="0.5">
          <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["Qutuf_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://qutuf.com">www.qutuf.com</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
         <!--spacer -->
        <section id="spacer01" class="section clearfix"></section>
         <!-- spacer section:saudibdco -->
        <section id="parallax4" class="section parallax " data-stellar-background-ratio="0.5">
          <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="align-center">
                            <div class="testimonial pad-top40 pad-bot40 clearfix">
                                <h5>
                                    <asp:Literal runat="server" Text='<%# Data["BDCO_Desc"] %>'></asp:Literal>
                                </h5>
                                <br />
                                <span class="author">&mdash;
                                    <asp:Literal runat="server" Text='<%# Data["Check_it"] %>'></asp:Literal>
                                    <a target="_blank" href="http://saudibdco.com">www.saudibdco.com</a></span>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
        </section>
       
        
        <!-- contact -->
        <section id="section-contact" class="section appear clearfix">
            <div class="container">

                <div class="row mar-bot40">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="section-header">
                            <h2 class="section-heading animated" data-animation="bounceInUp">
                                <asp:Literal runat="server" Text='<%# Data["Contact_Us"] %>'></asp:Literal></h2>
                            <p>
                                <asp:Literal runat="server" Text='<%# Data["Contact_Us_Desc"] %>'></asp:Literal></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="cform" id="contact-form">
                            <div id="sendmessage">
                                Your message has been sent. Thank you!
                            </div>
                            <div id="errormessage"></div>
                            <%--							<form action="" method="post" role="form" class="contactForm">--%>
                            <%-- <div class="form-group">
                                <label for="name"><asp:Literal runat="server" Text='<%# Data["Name"] %>'></asp:Literal></label>
                                <asp:TextBox runat="server" ID="Name" CssClass="form-control"  placeholder='<%# GetGlobalResourceObject("SiteData","Name_Holder") %>' ValidationGroup="contact"></asp:TextBox>
                                <div class="validation"><asp:RequiredFieldValidator ID="nameval" runat="server" ControlToValidate="name" ErrorMessage="Enter Name!" ValidationGroup="contact"></asp:RequiredFieldValidator></div>
                            </div>--%>
                            <div class="form-group">
                                <label for="email">
                                    <asp:Literal runat="server" Text='<%# Data["Email"] %>'></asp:Literal></label>
                                <asp:TextBox runat="server" ID="email" TextMode="Email" CssClass="form-control" placeholder='<%# GetGlobalResourceObject("SiteData","Email_Holder") %>' ValidationGroup="contact"></asp:TextBox>
                                <div class="validation">
                                    <asp:RequiredFieldValidator ID="emailval" runat="server" ControlToValidate="email" ErrorMessage="Enter Email!" ValidationGroup="contact"></asp:RequiredFieldValidator></div>
                            </div>
                            <div class="form-group">
                                <label for="subject">
                                    <asp:Literal runat="server" Text='<%# Data["Subject"] %>'></asp:Literal></label>
                                <asp:TextBox runat="server" ID="sub" CssClass="form-control" placeholder='<%# GetGlobalResourceObject("SiteData","Subject_Holder") %>' ValidationGroup="contact"></asp:TextBox>
                                <div class="validation">
                                    <asp:RequiredFieldValidator ID="subval" runat="server" ControlToValidate="sub" ErrorMessage="Enter Subject!" ValidationGroup="contact"></asp:RequiredFieldValidator></div>

                            </div>
                            <div class="form-group">
                                <label for="message">
                                    <asp:Literal runat="server" Text='<%# Data["Message"] %>'></asp:Literal></label>
                                <asp:TextBox runat="server" ID="msg" TextMode="MultiLine" CssClass="form-control" placeholder='<%# GetGlobalResourceObject("SiteData","Message_Holder") %>' ValidationGroup="contact"></asp:TextBox>
                                <div class="validation">
                                    <asp:RequiredFieldValidator ID="msgval" runat="server" ControlToValidate="msg" ErrorMessage="Enter Message!" ValidationGroup="contact"></asp:RequiredFieldValidator></div>

                            </div>

                            <asp:Button runat="server" Text='<%# Data["Send"] %>' ValidationGroup="contact" OnClick="Send_Click" CssClass="btn btn-theme pull-left"></asp:Button>
                            <%--</form>--%>
                        </div>
                    </div>
                    <!-- ./span12 -->
                </div>

            </div>
        </section>
        <!-- map -->
        <section id="section-map" class="clearfix">
            <div id="google-map" data-latitude="40.2215782" data-longitude="28.9674542"></div>
        </section>
        <section id="section-works" class="section appear hidden clearfix">
            <div class="container">

                <div class="row mar-bot40">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="section-header">
                            <h2 class="section-heading animated" data-animation="bounceInUp">Portfolio</h2>
                            <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam.</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <nav id="filter" class="col-md-12 text-center">
                        <ul>
                            <li><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
                            <li><a href="#" class="btn-theme btn-small" data-filter=".webdesign">Web Design</a></li>
                            <li><a href="#" class="btn-theme btn-small" data-filter=".photography">Photography</a></li>
                            <li><a href="#" class="btn-theme btn-small" data-filter=".print">Print</a></li>
                        </ul>
                    </nav>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="portfolio-items isotopeWrapper clearfix" id="3">

                                <article class="col-md-4 isotopeItem webdesign">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img1.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img1.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img2.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img2.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="col-md-4 isotopeItem photography">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img3.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img3.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img4.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img4.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img5.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img5.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem webdesign">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img6.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img6.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img7.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img7.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem photography">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img8.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img8.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>

                                <article class="col-md-4 isotopeItem print">
                                    <div class="portfolio-item">
                                        <img src="img/portfolio/img9.jpg" alt="" />
                                        <div class="portfolio-desc align-center">
                                            <div class="folio-info">
                                                <h5><a href="#">Portfolio name</a></h5>
                                                <a href="img/portfolio/img9.jpg" class="fancybox"><i class="fa fa-plus fa-2x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>

                        </div>


                    </div>
                </div>

            </div>
        </section>
        <section id="footer" class="section footer">
            <div class="container">
                <div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
                    <div class="col-sm-12 align-center">
                        <ul class="social-network social-circle">
                            <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>

                <div class="row align-center copyright">
                    <div class="col-sm-12">
                        <p>Copyright &copy; Apper Tech</p>
                        <div class="credits pad-top20">
                            All Rights Reserved 2019 <a href="http://apper.tech/">Apper Tech</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <a href="#header" class="scrollup"><i class="fa fa-chevron-up"></i></a>

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key="></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/fancybox/jquery.fancybox.pack.js"></script>
        <script src="js/skrollr.min.js"></script>
        <script src="js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script src="js/jquery.localscroll-1.2.7-min.js"></script>
        <script src="js/stellar.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/main.js"></script>

    </form>
</body>
</html>
