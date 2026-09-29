# ☕ Core Java Learning Process

A Java web application developed as an **NRCM Mini Project** using **Java, JSP, Servlets, JDBC, MySQL, HTML, and CSS**.

The application provides a simple student learning platform where users can **register an account, store their details in MySQL, and log in using their registered credentials**.

---

## 📌 Project Overview

**Core Java Learning Process** is a dynamic Java web application that demonstrates database connectivity and user authentication using Java Servlets and JSP.

The project connects a Java web application to a **MySQL database** using **JDBC**.

### Main Features

* 📝 Student Registration
* 🔐 Student Login
* 🗄️ MySQL Database Connectivity
* 🔌 JDBC Connection
* 🌐 JSP-based Web Pages
* ⚙️ Java Servlet Processing
* 🔒 Session Management
* 📱 Responsive Web Interface
* ❌ Login validation
* 💾 Persistent user data storage

---

## 🛠️ Technologies Used

| Technology    | Purpose                 |
| ------------- | ----------------------- |
| Java          | Backend programming     |
| JSP           | Dynamic web pages       |
| Servlets      | Request processing      |
| JDBC          | Database connectivity   |
| MySQL         | Data storage            |
| HTML5         | Page structure          |
| CSS3          | User interface design   |
| Apache Tomcat | Web application server  |
| Eclipse IDE   | Development environment |

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
│           │
│           ├── META-INF/
│           │   └── MANIFEST.MF
│           │
│           └── WEB-INF/
│               ├── lib/
│               │   └── mysql-connector-java-5.1.23.jar
│               └── web.xml
│
└── build/
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
    password VARCHAR(255) NOT NULL
);
```

### 3. Verify the Table

```sql
DESC users;
```

To vie
