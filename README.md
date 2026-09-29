# ☕ Core Java Learning Process

A Java web application developed as an **NRCM Mini Project** using **Java, JSP, Servlets, JDBC, MySQL, HTML, and CSS**.

The application provides a simple student learning platform where users can **register an account, store their details in MySQL, and log in using their registered credentials**.

---

## 📌 Project Overview

**Core Java Learning Process** is a dynamic Java web application that demonstrates database connectivity and user authentication using Java Servlets and JSP.

The project connects a Java web application to a **MySQL database** using **JDBC** (Java Database Connectivity).

### Main Features

* 📝 Student registration with validation
* 🔐 Student login with session management
* 🗄️ MySQL database connectivity
* 🔌 JDBC connection handling
* 🌐 JSP-based dynamic pages
* ⚙️ Java Servlet request processing
* 🔒 Secure authentication flow
* 📱 Responsive web interface
* ❌ Login validation and error feedback
* 💾 Persistent user data storage

---

## 🛠️ Technologies Used

| Technology | Purpose |
| ---------- | ------- |
| Java | Backend programming |
| JSP | Dynamic web pages |
| Servlets | Request processing |
| JDBC | Database connectivity |
| MySQL | Data storage |
| HTML5 | Page structure |
| CSS3 | User interface design |
| Apache Tomcat | Web application server |
| Eclipse IDE | Development environment |

---

## 📂 Project Structure

```text
DB_Connection/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── corejava/
│       │           ├── DBConnection.java
│       │           ├── LoginServlet.java
│       │           ├── RegisterServlet.java
│       │           └── TestConnection.java
│       │
│       └── webapp/
│           ├── index.jsp
│           ├── login.jsp
│           ├── register.jsp
│           ├── home.jsp
│           ├── META-INF/
│           │   └── MANIFEST.MF
│           │
│           └── WEB-INF/
│               ├── lib/
│               │   └── mysql-connector-java-5.1.23.jar
│               └── web.xml
│
├── build/
├── README.md
├── .gitignore
└── LICENSE
```

---

## 🔄 Application Workflow

```text
                ┌──────────────────┐
                │    index.jsp     │
                │   Home Page      │
                └────────┬─────────┘
                         │
              ┌──────────┴──────────┐
              │                     │
              ▼                     ▼
      ┌───────────────┐     ┌───────────────┐
      │ register.jsp  │     │   login.jsp   │
      │   Register     │     │   Login Form  │
      └───────┬───────┘     └───────┬───────┘
              │                     │
              ▼                     ▼
     RegisterServlet          LoginServlet
              │                     │
              └──────────┬──────────┘
                         ▼
                 ┌───────────────┐
                 │ DBConnection  │
                 │     JDBC      │
                 └───────┬───────┘
                         │
                         ▼
                 ┌───────────────┐
                 │     MySQL     │
                 │  users table  │
                 └───────────────┘
```

---

## 🗄️ Database Setup

The application uses a MySQL database named:

```text
corejava_training
```

### 1. Create Database

Open MySQL Workbench or MySQL Command Line and run:

```sql
CREATE DATABASE corejava_training;
```

Select the database:

```sql
USE corejava_training;
```

### 2. Create Users Table

```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 3. Verify the Table

```sql
DESC users;
```

---

## 🚀 Setup Instructions

### Prerequisites

- Java JDK 8 or higher
- Apache Tomcat 8 or higher
- MySQL Server
- Eclipse IDE or IntelliJ IDEA
- MySQL Connector/J JAR file

### Step 1: Clone the Project

```bash
git clone https://github.com/sreesahithikakumani/DB_Connection.git
cd DB_Connection
```

### Step 2: Configure Database Credentials

Open the database connection file and update the username and password:

```java
String url = "jdbc:mysql://localhost:3306/corejava_training";
String user = "root";
String password = "your_password";
```

### Step 3: Add MySQL Connector

Make sure the MySQL JDBC driver is available in the project classpath or under `WEB-INF/lib`.

### Step 4: Run the Application

1. Import the project into Eclipse or another Java IDE.
2. Deploy it to Tomcat.
3. Start the Tomcat server.
4. Open the browser and visit:

```text
http://localhost:8080/DB_Connection/
```

---

## 🔐 Functional Flow

### Registration

1. User opens the registration page.
2. Enters name, email, username, and password.
3. Data is validated.
4. Records are inserted into the MySQL `users` table.
5. User is redirected to login page.

### Login

1. User enters username and password.
2. Servlet checks the credentials in the database.
3. On success, a session is created.
4. User is redirected to the home/dashboard page.

### Logout

1. User clicks logout.
2. Session is invalidated.
3. User is redirected to the home page.

---

## 🛡️ Security Notes

- Passwords should be hashed before storing in production.
- Use `PreparedStatement` for database queries to prevent SQL injection.
- Validate all user inputs before processing.
- Use proper session timeout and logout handling.

---

## 📈 Future Improvements

- Add password encryption using BCrypt
- Implement email verification
- Add password reset feature
- Add admin dashboard
- Improve UI/UX with Bootstrap
- Add validation messages and error handling improvements
- Add user profile management

---

## 📄 License

This project is intended for educational purposes and learning Java web application development.

---

## 👨‍💻 Author

**Sreesahithi Kakumani**

- GitHub: [sreesahithikakumani](https://github.com/sreesahithikakumani)

---

## 🙏 Acknowledgment

This project was created as part of the NRCM mini project to understand Java web application development, JDBC integration, and MySQL connectivity.

---

Last updated: September 29, 2026
