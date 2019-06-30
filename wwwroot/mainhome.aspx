﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainhome.aspx.cs" Inherits="preview_dotnet_templates_registration_Form_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>大葉大學資訊管理系校外實習平台</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />  
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />

     
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>


</head>
<body>
    <form id="form1"  runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
               <a class="navbar-brand">大葉大學資管系實習平台</a> 
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/studentlogin.aspx">學生實習站</a> </li>
                    <li><a href="/companylogin.aspx">廠商管理系統</a> </li>
                    <li><a href="/teacherlogin.aspx">教師實習管理</a> </li>
                    <li><a href="http://sa.dyu.edu.tw/cdc4300/" target="_blank">職涯發展中心</a> </li>
                    <li><a href="index.aspx">註冊</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
            <h1></br>大葉大學資訊管理系
                    <font color="green"></br><strong>校外實習平台</strong></font></br></h1>
                <h5>
                    <strong>資管系第九小組製作</strong></h5>
                    <a href="http://im.dyu.edu.tw/"<strong>http://im.dyu.edu.tw/</strong></h5></a>
                </div>
            </div>
   <section>

    <!-- begin .boxes -->
        <br class="clearfloat" />
        <div class="boxes">
        	<div class="box">
            	<div><img src="images/boxPic1.jpg" alt=""></div>
                <h3>Ipsum is simply dummy text</h3>
                            </div>
            <div class="box">
            	<div><img src="images/boxPic2.jpg" alt=""></div>
                <h3>the printing and typesetting industry</h3>
            </div>
            <div class="box">
            	<div><img src="images/boxPic3.jpg" alt=""></div>
                <h3>standard dummy text ever since the 1500s</h3>
                                            </div>
            <br class="clearfloat" />
        </div>
        <!-- end .boxes -->



     </section>
       
    </div>
   
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [
            "img/44.jpg",
            "img/colorful.jpg",
            "img/34.jpg",
            "img/images.jpg"
        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
    </script>
    </form>
</body>
</html>
