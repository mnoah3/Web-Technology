<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Google Search Redirect - Assignment 2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .search-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 400px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }
        .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 30px;
            font-size: 14px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input[type="text"]:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
        }
        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s;
        }
        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .info {
            margin-top: 20px;
            padding: 15px;
            background: #f0f0f0;
            border-radius: 5px;
            font-size: 13px;
            color: #666;
            line-height: 1.6;
        }
        .info strong {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="search-container">
        <h1>Assignment 2</h1>
        <p class="subtitle">Google Search Redirect using sendRedirect()</p>
        <form method="POST" action="RedirectServlet">
            <div class="form-group">
                <label for="searchQuery">Search Query:</label>
                <input type="text" id="searchQuery" name="searchQuery" placeholder="Enter what you want to search..." required>
            </div>
            <button type="submit">Fetch (Redirect to Google)</button>
        </form>
        <div class="info">
            <strong>How it works:</strong>
            <ul>
                <li>Enter a search query in the input field</li>
                <li>Click the "Fetch" button</li>
                <li>The servlet will use <code>sendRedirect()</code> to redirect you to Google with your search query</li>
                <li>If you leave it empty, you'll be redirected to Google homepage</li>
            </ul>
        </div>
    </div>
</body>
</html>
