<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Web Assignments - Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
        }
        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px 20px;
            text-align: center;
        }
        .header h1 {
            font-size: 32px;
            margin-bottom: 10px;
        }
        .header p {
            font-size: 16px;
            opacity: 0.9;
        }
        .content {
            padding: 40px;
        }
        .assignments {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }
        .assignment-card {
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease;
        }
        .assignment-card:hover {
            border-color: #667eea;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.2);
            transform: translateY(-5px);
        }
        .assignment-card h2 {
            color: #333;
            margin-bottom: 15px;
            font-size: 20px;
        }
        .assignment-card p {
            color: #666;
            margin-bottom: 20px;
            font-size: 14px;
            line-height: 1.6;
        }
        .btn {
            display: inline-block;
            padding: 10px 25px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: transform 0.2s;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .features {
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid #e9ecef;
        }
        .features h3 {
            color: #333;
            margin-bottom: 15px;
        }
        .features ul {
            list-style: none;
        }
        .features li {
            color: #666;
            margin-bottom: 8px;
            padding-left: 20px;
            position: relative;
        }
        .features li:before {
            content: "✓";
            position: absolute;
            left: 0;
            color: #667eea;
            font-weight: bold;
        }
        @media (max-width: 600px) {
            .assignments {
                grid-template-columns: 1fr;
            }
            .header h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Web Assignments</h1>
            <p>Servlet and JSP Learning Exercises</p>
        </div>
        <div class="content">
            <div class="assignments">
                <div class="assignment-card">
                    <h2>📝 Assignment 1</h2>
                    <p><strong>Login Servlet</strong><br/>
                    A form that validates password strength. Passwords must be at least 8 characters.</p>
                    <a href="LoginPage.jsp" class="btn">Go to Login</a>
                </div>
                <div class="assignment-card">
                    <h2>🔄 Assignment 2</h2>
                    <p><strong>Send Redirect</strong><br/>
                    Redirects your search query to Google using sendRedirect() method.</p>
                    <a href="RedirectPage.jsp" class="btn">Go to Search</a>
                </div>
            </div>
            <div class="features">
                <h3>📚 What You'll Learn:</h3>
                <ul>
                    <li>Creating and configuring Java Servlets</li>
                    <li>Handling HTTP POST requests</li>
                    <li>Parameter extraction from forms</li>
                    <li>Response handling and HTML generation</li>
                    <li>URL redirection using sendRedirect()</li>
                    <li>Servlet configuration in web.xml</li>
                    <li>JSP form creation and styling</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
