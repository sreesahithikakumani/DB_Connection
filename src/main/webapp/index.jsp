
<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="ISO-8859-1">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>NRCM Mini Project - Core Java</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background: linear-gradient(135deg, #eef2ff, #f8fafc, #e0f2fe);
            color: #1e293b;
        }

        /* ================= HEADER ================= */

        header {
            background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
            color: white;
            padding: 22px 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 5px 20px rgba(15, 23, 42, 0.25);
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .logo-icon {
            width: 48px;
            height: 48px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.15);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .logo-text h2 {
            font-size: 22px;
            letter-spacing: 1px;
        }

        .logo-text p {
            font-size: 12px;
            opacity: 0.8;
            margin-top: 3px;
        }

        .project-name {
            font-size: 14px;
            font-weight: bold;
            padding: 10px 18px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.25);
        }

        /* ================= MAIN ================= */

        main {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 60px 20px;
        }

        .container {
            width: 100%;
            max-width: 1000px;
            text-align: center;
        }

        .mini-project {
            display: inline-block;
            padding: 8px 20px;
            border-radius: 30px;
            background: #dbeafe;
            color: #1d4ed8;
            font-size: 13px;
            font-weight: bold;
            letter-spacing: 1px;
            margin-bottom: 18px;
        }

        .container h1 {
            font-size: 42px;
            margin-bottom: 15px;
            background: linear-gradient(90deg, #0f172a, #2563eb);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .subtitle {
            max-width: 650px;
            margin: auto;
            line-height: 1.7;
            color: #64748b;
            font-size: 16px;
        }

        /* ================= CARDS ================= */

        .cards {
            margin-top: 45px;
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .card {
            width: 300px;
            padding: 35px 30px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 20px;
            box-shadow: 0 12px 35px rgba(15, 23, 42, 0.12);
            transition: 0.3s ease;
            border: 1px solid rgba(226, 232, 240, 0.8);
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 45px rgba(37, 99, 235, 0.18);
        }

        .card-icon {
            width: 65px;
            height: 65px;
            margin: auto;
            margin-bottom: 20px;
            border-radius: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            background: #eff6ff;
            color: #2563eb;
        }

        .card h2 {
            font-size: 22px;
            margin-bottom: 12px;
            color: #0f172a;
        }

        .card p {
            color: #64748b;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 25px;
        }

        /* ================= BUTTONS ================= */

        .btn {
            display: inline-block;
            text-decoration: none;
            padding: 12px 28px;
            border-radius: 10px;
            font-size: 14px;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .register-btn {
            background: linear-gradient(135deg, #2563eb, #1d4ed8);
            color: white;
            box-shadow: 0 8px 20px rgba(37, 99, 235, 0.25);
        }

        .register-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(37, 99, 235, 0.35);
        }

        .login-btn {
            background: #0f172a;
            color: white;
            box-shadow: 0 8px 20px rgba(15, 23, 42, 0.2);
        }

        .login-btn:hover {
            background: #1e293b;
            transform: translateY(-2px);
        }

        /* ================= FOOTER ================= */

        footer {
            background: #0f172a;
            color: #cbd5e1;
            text-align: center;
            padding: 22px 15px;
        }

        footer h3 {
            color: white;
            font-size: 16px;
            margin-bottom: 7px;
        }

        footer p {
            font-size: 13px;
            color: #94a3b8;
        }

        .footer-line {
            width: 60px;
            height: 3px;
            background: #2563eb;
            margin: 0 auto 12px;
            border-radius: 10px;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 700px) {

            header {
                padding: 18px 20px;
            }

            .project-name {
                display: none;
            }

            .container h1 {
                font-size: 32px;
            }

            .subtitle {
                font-size: 14px;
            }

            .cards {
                gap: 20px;
            }

            .card {
                width: 100%;
                max-width: 350px;
            }
        }

    </style>

</head>

<body>

    <!-- ================= HEADER ================= -->

    <header>

        <div class="logo">

            <div class="logo-icon">
                ☕
            </div>

            <div class="logo-text">
                <h2>Core Java</h2>
                <p>Learning & Development</p>
            </div>

        </div>

        <div class="project-name">
            NRCM MINI PROJECT
        </div>

    </header>


    <!-- ================= MAIN CONTENT ================= -->

    <main>

        <div class="container">

            <div class="mini-project">
                NRCM MINI PROJECT
            </div>

            <h1>Core Java Learning Process</h1>

            <p class="subtitle">
                Welcome to the Core Java Learning Platform.
                Register yourself to begin your learning journey
                or login to continue your Java learning process.
            </p>


            <!-- CARDS -->

            <div class="cards">

                <!-- REGISTER CARD -->

                <div class="card">

                    <div class="card-icon">
                        📝
                    </div>

                    <h2>Create Account</h2>

                    <p>
                        New to the learning platform?
                        Register your account and start
                        learning Core Java step by step.
                    </p>

                    <a href="register.jsp"
                       class="btn register-btn">
                        Register Now
                    </a>

                </div>


                <!-- LOGIN CARD -->

                <div class="card">

                    <div class="card-icon">
                        🔐
                    </div>

                    <h2>Student Login</h2>

                    <p>
                        Already registered?
                        Login to your account and continue
                        your Core Java learning journey.
                    </p>

                    <a href="login.jsp"
                       class="btn login-btn">
                        Login Now
                    </a>

                </div>

            </div>

        </div>

    </main>


    <!-- ================= FOOTER ================= -->

    <footer>

        <div class="footer-line"></div>

        <h3>NRCM Mini Project</h3>

        <p>
            Core Java Learning Process
        </p>

        <p>
            © 2026 All Rights Reserved
        </p>

    </footer>

</body>

</html>

