<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PetClinic :: a Spring Framework demonstration</title>


    
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    
    <link href="./css/petclinic.css" rel="stylesheet">

    
    <script src="./js/jquery.js"></script>

    
    <script src="./js/jquery-ui-1.9.2.custom.js"></script>

    
    <link href="./css/jquery-ui-1.9.2.custom.css" rel="stylesheet">
</head>




<body style="zoom: 1;">
<div class="container">
    



<img src="./banner-graphic.png">

<div class="navbar" style="width: 601px;">
    <div class="navbar-inner">
        <ul class="nav">
            <li style="width: 100px;"><a href=""><i class="icon-home"></i>
                Home</a></li>
            <li style="width: 130px;"><a href=""><i class="icon-search"></i> Find owners</a></li>
            <li style="width: 140px;"><a href=""><i class="icon-th-list"></i> Veterinarians</a></li>
            <li style="width: 90px;"><a href="" title="trigger a RuntimeException to see how it is handled"><i class="icon-warning-sign"></i> Error</a></li>
            <li style="width: 80px;"><a href="#" title="not available yet. Work in progress!!"><i class=" icon-question-sign"></i> Help</a></li>
        </ul>
    </div>
</div>
    

    <h2>Welcome</h2>
    
      <p>This is a live Java Spring Framework application running on Apache Tomcat (TC) BY Nicholas deployed through Murano on a box provisioned by Openstack. Please explore the application, and refer to the following resources to learn how to migrate a Spring Framework application to Windows Azure. While the tutorial below focuses on a popular Spring Framework sample application, <a href="http://petclinic.cloudapp.net">the Java PetClinic</a> , the tutorial will introduce you to the Windows Azure Java SDK, Windows Azure Caching using memcached, Windows Azure Cloud Services, Windows Azure SQL Database, and a variety of other technologies that will be used in many other types of Java applications deployed on Windows Azure.</p>
      

       
    
    <img src="./pets.png">

    

<table class="footer">
    <tbody><tr>
        <td></td>
        <td align="right"><img src="./springsource-logo.png" alt="Sponsored by SpringSource"></td>
    </tr>
</tbody></table>




</div>



<style> .humane, .humane-libnotify { position: fixed; -moz-transition: all 0.3s ease-out; -webkit-transition: all 0.3s ease-out; -ms-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; transition: all 0.3s ease-out; z-index: 100000; filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100); } .humane, .humane-libnotify { font-family: Ubuntu, Arial, sans-serif; text-align: center; font-size: 15px; top: 10px; right: 10px; opacity: 0; width: 150px; color: #fff; padding: 10px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAABQCAYAAADYxx/bAAAABmJLR0QA/wD/AP+gvaeTAAAANElEQVQYlWNgYGB4ysTAwMDAxMjICCUQXDQWAwMDAxMTExMedcRyB6d5CAMQ5hGrjSrmAQBQdgIXlosSTwAAAABJRU5ErkJggg=='); background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(0,0,0,0.9)), color-stop(1, rgba(50,50,50,0.9))) no-repeat; background: -moz-linear-gradient(top, rgba(0,0,0,0.9) 0%, rgba(50,50,50,0.9) 100%) no-repeat; background: -webkit-linear-gradient(top, rgba(0,0,0,0.9) 0%, rgba(50,50,50,0.9) 100%) no-repeat; background: -ms-linear-gradient(top, rgba(0,0,0,0.9) 0%, rgba(50,50,50,0.9) 100%) no-repeat; background: -o-linear-gradient(top, rgba(0,0,0,0.9) 0%, rgba(50,50,50,0.9) 100%) no-repeat; background: linear-gradient(top, rgba(0,0,0,0.9) 0%, rgba(50,50,50,0.9) 100%) no-repeat; *background-color: #000; -webkit-border-radius: 5px; border-radius: 5px; -webkit-box-shadow: 0 4px 4px -4px #000; box-shadow: 0 4px 4px -4px #000; -moz-transform: translateY(-40px); -webkit-transform: translateY(-40px); -ms-transform: translateY(-40px); -o-transform: translateY(-40px); transform: translateY(-40px); } .humane p, .humane-libnotify p, .humane ul, .humane-libnotify ul { margin: 0; padding: 0; } .humane ul, .humane-libnotify ul { list-style: none; } .humane.humane-libnotify-info, .humane-libnotify.humane-libnotify-info { background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAABQCAYAAADYxx/bAAAABmJLR0QA/wD/AP+gvaeTAAAAMUlEQVQYlWNgYDB6ysTAwMDAxMDACCcYUFkMDEwMDEwMBNVhkxg65jGhmke6M6hgHgBSdgHnpZwADwAAAABJRU5ErkJggg=='); background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(0,0,50,0.9)), color-stop(1, rgba(0,0,100,0.9))) no-repeat; background: -moz-linear-gradient(top, rgba(0,0,50,0.9) 0%, rgba(0,0,100,0.9) 100%) no-repeat; background: -webkit-linear-gradient(top, rgba(0,0,50,0.9) 0%, rgba(0,0,100,0.9) 100%) no-repeat; background: -ms-linear-gradient(top, rgba(0,0,50,0.9) 0%, rgba(0,0,100,0.9) 100%) no-repeat; background: -o-linear-gradient(top, rgba(0,0,50,0.9) 0%, rgba(0,0,100,0.9) 100%) no-repeat; background: linear-gradient(top, rgba(0,0,50,0.9) 0%, rgba(0,0,100,0.9) 100%) no-repeat; *background-color: #030; } .humane.humane-libnotify-success, .humane-libnotify.humane-libnotify-success { background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAABQCAYAAADYxx/bAAAABmJLR0QA/wD/AP+gvaeTAAAAMUlEQVQYlWNgMGJ4ysTAwMDAxMAIJxhQWQwMDEwMTKgS2NRhkxg65jGhmke6M6hhHgBS2QHn2LzhygAAAABJRU5ErkJggg=='); background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(0,50,0,0.9)), color-stop(1, rgba(0,100,0,0.9))) no-repeat; background: -moz-linear-gradient(top, rgba(0,50,0,0.9) 0%, rgba(0,100,0,0.9) 100%) no-repeat; background: -webkit-linear-gradient(top, rgba(0,50,0,0.9) 0%, rgba(0,100,0,0.9) 100%) no-repeat; background: -ms-linear-gradient(top, rgba(0,50,0,0.9) 0%, rgba(0,100,0,0.9) 100%) no-repeat; background: -o-linear-gradient(top, rgba(0,50,0,0.9) 0%, rgba(0,100,0,0.9) 100%) no-repeat; background: linear-gradient(top, rgba(0,50,0,0.9) 0%, rgba(0,100,0,0.9) 100%) no-repeat; *background-color: #030; } .humane.humane-libnotify-error, .humane-libnotify.humane-libnotify-error { background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAADICAYAAAAp8ov1AAAABmJLR0QA/wD/AP+gvaeTAAAAPklEQVQokWMwYmB4ysTAwMCATjASFsOmBBvBRJ7x+O0g0wCS7CDTH/RwH7X9MVDuwyaG032D2M2UeIYO7gMAqt8C19Bn7+YAAAAASUVORK5CYII='); background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(50,0,0,0.9)), color-stop(1, rgba(100,0,0,0.9))) no-repeat; background: -moz-linear-gradient(top, rgba(50,0,0,0.9) 0%, rgba(100,0,0,0.9) 100%) no-repeat; background: -webkit-linear-gradient(top, rgba(50,0,0,0.9) 0%, rgba(100,0,0,0.9) 100%) no-repeat; background: -ms-linear-gradient(top, rgba(50,0,0,0.9) 0%, rgba(100,0,0,0.9) 100%) no-repeat; background: -o-linear-gradient(top, rgba(50,0,0,0.9) 0%, rgba(100,0,0,0.9) 100%) no-repeat; background: linear-gradient(top, rgba(50,0,0,0.9) 0%, rgba(100,0,0,0.9) 100%) no-repeat; *background-color: #300; } .humane.humane-animate, .humane-libnotify.humane-libnotify-animate { opacity: 1; -moz-transform: translateY(0); -webkit-transform: translateY(0); -ms-transform: translateY(0); -o-transform: translateY(0); transform: translateY(0); } .humane.humane-animate:hover, .humane-libnotify.humane-libnotify-animate:hover { opacity: 0.2; } .humane.humane-animate, .humane-libnotify.humane-libnotify-js-animate { opacity: 1; -moz-transform: translateY(0); -webkit-transform: translateY(0); -ms-transform: translateY(0); -o-transform: translateY(0); transform: translateY(0); } .humane.humane-animate:hover, .humane-libnotify.humane-libnotify-js-animate:hover { opacity: 0.2; filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=20); } .gi-assertion-select * { cursor: crosshair !important; } .gi-assertion-select *:hover { outline: 1px dotted rgba(0, 0, 0, 1); } .gi-assertion-selected { outline: 3px solid rgba(0, 170, 0, 1) !important; } </style></body><div></div></html>
