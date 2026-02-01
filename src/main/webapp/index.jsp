
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servlet Assignments</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Times New Roman', serif;
            background: linear-gradient(135deg, #e0c097, #c1a17b);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: rgba(255, 250, 240, 0.95);
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            padding: 70px 50px;
            max-width: 700px;
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #5a3e36; 
            margin-bottom: 15px;
            font-size: 42px;
        }

        .subtitle {
            text-align: center;
            color: #7a5c51;
            margin-bottom: 50px;
            font-size: 18px; /* increased font */
        }

        .assignment-card {
            background: rgba(250, 240, 230, 0.9);
            border-radius: 12px;
            padding: 35px;
            margin-bottom: 30px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-left: 6px solid #c1a17b;
        }

        .assignment-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.2);
        }

        .assignment-card h2 {
            color: #5a3e36;
            margin-bottom: 20px;
            font-size: 26px; 
        }

        .assignment-card p {
            color: #6b4f42;
            margin-bottom: 25px;
            line-height: 1.8;
            font-size: 18px;
        }

        .btn {
            display: inline-block;
            padding: 16px 36px; 
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            font-size: 18px;
            transition: all 0.3s ease;
        }

        .btn-login {
            background: #8b5e3c;
        }

        .btn-login:hover {
            background: #7a4e31;
            box-shadow: 0 0 12px #7a4e31;
        }

        .btn-google {
            background: linear-gradient(90deg, #4285F4, #34A853, #FBBC05, #EA4335);
            background-size: 300% 300%;
            animation: googleGradient 6s ease infinite;
        }

        .btn-google:hover {
            transform: scale(1.05);
            box-shadow: 0 0 15px rgba(66,133,244,0.7),
                        0 0 15px rgba(52,168,83,0.7),
                        0 0 15px rgba(251,188,5,0.7),
                        0 0 15px rgba(234,67,53,0.7);
        }

        @keyframes googleGradient {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .footer {
            margin-top: 40px;
            text-align: center;
            color: #7a5c51;
            font-size: 15px; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h1> Web Technology</h1>
        <p class="subtitle">Servlet Assignments</p>
        
        <div class="assignment-card">
            <h2> Assignment 1: Login Servlet</h2>
            <p>A Login Button.</p>
            <a href="login.html" class="btn btn-login">Open Login Form</a>
        </div>
        
        <div class="assignment-card">
            <h2> Assignment 2: Redirect Servlet</h2>
            <p>A Search redirecting Form Button.</p>
            <a href="redirect.html" class="btn btn-google">Open Search Form</a>
        </div>
        
        <div class="footer">
            <p> Java Servlets | WebTech 2026</p>
        </div>
    </div>
</body>
</html>
