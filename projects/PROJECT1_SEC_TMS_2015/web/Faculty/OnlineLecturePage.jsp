<%-- 
    Document   : OnlineLecturePage
    Created on : 6 Apr, 2015, 1:43:19 PM
    Author     : nikil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <embed type="application/x-vlc-plugin" name="VLC" autoplay="yes" loop="no" volume="100" width="640" height="480" target="mymovie.avi">

<a href="javascript:;" onclick='document.video1.play()'>Play</a>

<a href="javascript:;" onclick='document.video1.pause()'>Pause</a>

<a href="javascript:;" onclick='document.video1.stop()'>Stop</a>

<a href="javascript:;" onclick='document.video1.fullscreen()'>Fullscreen</a>


    </body>
</html>
