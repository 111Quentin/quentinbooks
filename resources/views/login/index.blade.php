
<!DOCTYPE html>
<html>
<head>
    <title>Quentin Books</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Kipy Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="/css/style.css" rel='stylesheet' type='text/css' />
    {{--<!--webfonts-->--}}
    {{--<link href="fonts.googleapis.com/css?family=Open+Sans:700,300,600,800,400" rel='stylesheet' type='text/css'>--}}
    {{--<link href='fonts.googleapis.com/css?family=Marvel:400,700' rel='stylesheet' type='text/css'>--}}
    {{--<!--//webfonts-->--}}
</head>
<body>
<h1>Quentin Books Login</h1>
<div class="login-form">
    <h2>User Login</h2>
    <div class="form-info">
        <form action="/login" method="post">
            <input type="text" name="email" class="email" placeholder="Email Address" required=""/>
            <input type="password" name="password" class="password" placeholder="Password" required=""/>
          <div>
           <div class="lab">
              <p>
                <input type="checkbox" value="1" name="is_remember"> Remember me
            </p>
           </div>

              <p><a href="#">Forgot password?</a></p>
          </div>

           <div>
            <ul class="login-buttons">
                <li><input type="submit" value="LOGIN"/></li>
                <li><a href="/register" class="hvr-sweep-to-left ">REGISTER</a></li>
                <div class="clear"> </div>
            </ul>
           </div>
        </form>
         @include('layout.error')
    </div>
</div>
</body>
</html>
