<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AU Travels</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        header {
            background: #333;
            color: white;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #bbb 1px solid;
        }

        header a {
            color: #ffffff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }

        header ul {
            padding: 0;
            margin: 0;
            list-style: none;
            overflow: hidden;
        }

        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
            border-right: #bbb 1px solid;
            box-sizing: border-box;
            height: 70px;
        }

        header #branding {
            float: left;
        }

        header #branding h1 {
            margin: 0;
        }

        header .highlight, header a:hover {
            color: #ffffff;
        }

        header a:hover {
            border-bottom: 3px solid #ffffff;
        }

        header #login {
            float: right;
            padding-top: 10px;
        }

        header form {
            display: inline;
        }

        header input[type="text"],header input[type="password"] {
            padding: 5px;
            margin-top: 10px;
            margin-right: 10px;
            font-size: 16px;
        }

        header input[type="submit"] {
            padding: 5px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background: #333;
            border: none;
            border-radius: 5px;
            margin-top: 10px;
        }

        header #logout {
            display: inline;
        }

        header a:hover {
            border-bottom: none;
        }

        #main {
            padding: 20px 0;
        }

        #main h1, #main h2 {
            color: #333;
        }

        #main p {
            font-size: 18px;
            line-height: 1.6em;
            color: #666;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            border: 2px solid #3498db;
            color: #3498db;
            background-color: white;
            border-radius: 5px;
            margin-right: 10px;
        }

        .button:hover {
            background-color: #3498db;
            color: white;
        }
    </style>
</head>
<body>

    <header>
        <div class="container">
            <div id="branding">
                <h1><span class="highlight">AU Travels</span></h1>
            </div>
            <div id="login">
                <form>
                    <input type="text" placeholder="Username">
                    <input type="password" placeholder="Password">
                    <input type="submit" value="Login" class="button">
                </form>
            </div>
        </div>
    </header>

    <div class="container" id="main">
        <h1>Welcome to AU Travels</h1>
        <p>Explore the world with AU Travels. Sign up or sign in to start your journey.</p>
        <a href="travels/sign-up" class="button">Sign Up</a>
        <a href="travels/sign-in" class="button">Sign In</a>
    </div>

</body>
</html>
