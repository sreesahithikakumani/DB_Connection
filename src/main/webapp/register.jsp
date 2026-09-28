
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>User Registration - NRCM Mini Project</title>

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
            padding: 50px 20px;
        }

        .registration-container {
            width: 100%;
            max-width: 520px;
        }

        .registration-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px 45px;
            border-radius: 22px;
            box-shadow: 0 15px 45px rgba(15, 23, 42, 0.15);
            border: 1px solid rgba(226, 232, 240, 0.8);
        }

        /* ================= TITLE ================= */

        .project-label {
            display: inline-block;
            padding: 7px 17px;
            border-radius: 25px;
            background: #dbeafe;
            color: #1d4ed8;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            margin-bottom: 15px;
        }

        .registration-card h1 {
            color: #0f172a;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        /* ================= FORM ================= */

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            color: #334155;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            outline: none;
            font-size: 14px;
            color: #1e293b;
            background: #f8fafc;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #2563eb;
            background: white;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
        }

        input::placeholder {
            color: #94a3b8;
        }

        /* ================= REGISTER BUTTON ================= */

        .register-btn {
            width: 100%;
            border: none;
            padding: 14px;
            border-radius: 10px;
            background: linear-gradient(135deg, #2563eb, #1d4ed8);
            color: white;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
            box-shadow: 0 8px 20px rgba(37, 99, 235, 0.25);
        }

        .register-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 28px rgba(37, 99, 235, 0.35);
        }

        /* ================= LOGIN LINK ================= */

        .login-section {
            text-align: center;
            margin-top: 25px;
            padding-top: 22px;
            border-top: 1px solid #e2e8f0;
        }

        .login-section p {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 8px;
        }

        .login-section a {
            color: #2563eb;
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
        }

        .login-section a:hover {
            text-decoration: underline;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #0f172a;
            color: #cbd5e1;
            text-align: center;
            padding: 22px 15px;
        }

        .footer-line {
            width: 60px;
            height: 3px;
            background: #2563eb;
            margin: 0 auto 12px;
            border-radius: 10px;
        }

        footer h3 {
            color: white;
            font-size: 16px;
            margin-bottom: 7px;
        }

        footer p {
            font-size: 13px;
            color: #94a3b8;
            margin: 3px 0;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 600px) {

            header {
                padding: 18px 20px;
            }

            .project-name {
                display: none;
            }

            .registration-card {
                padding: 30px 25px;
            }

            .registration-card h1 {
                font-size: 26px;
            }

            main {
                padding: 35px 15px;
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

                <p>
                    Learning & Development
                </p>

            </div>

        </div>

        <div class="project-name">
            NRCM MINI PROJECT
        </div>

    </header>


    <!-- ================= MAIN ================= -->

    <main>

        <div class="registration-container">

            <div class="registration-card">

                <div class="project-label">
                    NRCM MINI PROJECT
                </div>

                <h1>
                    User Registration
                </h1>

                <p class="subtitle">
                    Create your account and start your
                    Core Java learning journey.
                </p>


                <form action="RegisterServlet"
                      method="post">


                    <!-- NAME -->

                    <div class="form-group">

                        <label for="name">
                            Full Name
                        </label>

                        <input type="text"
                               id="name"
                               name="name"
                               placeholder="Enter your full name"
                               required>

                    </div>


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label for="email">
                            Email Address
                        </label>

                        <input type="email"
                               id="email"
                               name="email"
                               placeholder="Enter your email address"
                               required>

                    </div>


                    <!-- USERNAME -->

                    <div class="form-group">

                        <label for="username">
                            Username
                        </label>

                        <input type="text"
                               id="username"
                               name="username"
                               placeholder="Choose a username"
                               required>

                    </div>


                    <!-- PASSWORD -->

                    <div class="form-group">

                        <label for="password">
                            Password
                        </label>

                        <input type="password"
                               id="password"
                               name="password"
                               placeholder="Create a password"
                               required>

                    </div>


                    <!-- REGISTER -->

                    <input type="submit"
                           value="Create Account"
                           class="register-btn">

                </form>


                <!-- LOGIN -->

                <div class="login-section">

                    <p>
                        Already have an account?
                    </p>

                    <a href="login.jsp">
                        Login to Your Account
                    </a>

                </div>

            </div>

        </div>

    </main>


    <!-- ================= FOOTER ================= -->

    <footer>

        <div class="footer-line"></div>

        <h3>
            NRCM Mini Project
        </h3>

        <p>
            Core Java Learning Process
        </p>

        <p>
            © 2026 All Rights Reserved
        </p>

    </footer>


</body>

</html>
