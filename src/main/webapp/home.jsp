<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>Core Java Learning Portal</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f4f6f8;
        }

        .header {
            background-color: #1f2937;
            color: white;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
            font-size: 28px;
        }

        .header p {
            margin: 5px 0 0;
            font-size: 14px;
        }

        .logout {
            background-color: #dc2626;
            color: white;
            text-decoration: none;
            padding: 10px 18px;
            border-radius: 5px;
        }

        .logout:hover {
            background-color: #b91c1c;
        }

        .container {
            width: 92%;
            margin: 30px auto;
        }

        .welcome {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            margin-bottom: 25px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }

        .welcome h2 {
            margin-top: 0;
            color: #1f2937;
        }

        .welcome p {
            color: #555;
            font-size: 16px;
        }

        .section-title {
            margin-top: 30px;
            margin-bottom: 15px;
            color: #1f2937;
        }

        .topics {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .topic-card {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            transition: 0.2s;
        }

        .topic-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        .topic-card h3 {
            color: #2563eb;
            margin-top: 0;
        }

        .topic-card p {
            color: #555;
            line-height: 1.5;
        }

        .topic-card ul {
            padding-left: 20px;
            color: #444;
            line-height: 1.7;
        }

        .number {
            display: inline-block;
            background-color: #2563eb;
            color: white;
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-radius: 50%;
            margin-right: 8px;
        }

        .footer {
            margin-top: 40px;
            background-color: #1f2937;
            color: white;
            text-align: center;
            padding: 20px;
        }

    </style>

</head>

<body>

    <!-- HEADER -->

    <div class="header">

        <div>
            <h1>Core Java Learning Portal</h1>
            <p>Welcome, <strong><%= username %></strong></p>
        </div>

        <div>
            <a href="login.jsp" class="logout">Logout</a>
        </div>

    </div>


    <!-- MAIN CONTENT -->

    <div class="container">

        <div class="welcome">

            <h2>Welcome to Core Java</h2>

            <p>
                This portal provides a complete collection of Core Java
                concepts starting from Java fundamentals and progressing
                to advanced topics such as Collections, Multithreading,
                Exception Handling, File Handling and JDBC.
            </p>

        </div>


        <!-- 1. JAVA FUNDAMENTALS -->

        <h2 class="section-title">1. Java Fundamentals</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>
                    <span class="number">1</span>
                    Introduction to Java
                </h3>

                <ul>
                    <li>What is Java?</li>
                    <li>Features of Java</li>
                    <li>Advantages of Java</li>
                    <li>Java Applications</li>
                    <li>Java Editions</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>
                    <span class="number">2</span>
                    JDK, JRE and JVM
                </h3>

                <ul>
                    <li>JDK</li>
                    <li>JRE</li>
                    <li>JVM</li>
                    <li>JVM Architecture</li>
                    <li>Bytecode</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>
                    <span class="number">3</span>
                    Java Program Structure
                </h3>

                <ul>
                    <li>Class</li>
                    <li>main() method</li>
                    <li>Statements</li>
                    <li>Comments</li>
                    <li>Compilation and Execution</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>
                    <span class="number">4</span>
                    Identifiers and Keywords
                </h3>

                <ul>
                    <li>Identifiers</li>
                    <li>Keywords</li>
                    <li>Reserved Words</li>
                    <li>Naming Rules</li>
                    <li>Conventions</li>
                </ul>

            </div>

        </div>


        <!-- 2. VARIABLES AND DATA TYPES -->

        <h2 class="section-title">2. Variables and Data Types</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Variables</h3>

                <ul>
                    <li>Local Variables</li>
                    <li>Instance Variables</li>
                    <li>Static Variables</li>
                    <li>Variable Scope</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Data Types</h3>

                <ul>
                    <li>byte</li>
                    <li>short</li>
                    <li>int</li>
                    <li>long</li>
                    <li>float</li>
                    <li>double</li>
                    <li>char</li>
                    <li>boolean</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Literals</h3>

                <ul>
                    <li>Integer Literals</li>
                    <li>Floating Literals</li>
                    <li>Character Literals</li>
                    <li>String Literals</li>
                    <li>Boolean Literals</li>
                    <li>Null Literal</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Type Conversion</h3>

                <ul>
                    <li>Widening Conversion</li>
                    <li>Narrowing Conversion</li>
                    <li>Implicit Conversion</li>
                    <li>Explicit Casting</li>
                </ul>

            </div>

        </div>


        <!-- 3. OPERATORS -->

        <h2 class="section-title">3. Operators</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Operators</h3>

                <ul>
                    <li>Arithmetic Operators</li>
                    <li>Relational Operators</li>
                    <li>Logical Operators</li>
                    <li>Assignment Operators</li>
                    <li>Unary Operators</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Advanced Operators</h3>

                <ul>
                    <li>Increment Operator</li>
                    <li>Decrement Operator</li>
                    <li>Conditional Operator</li>
                    <li>Bitwise Operators</li>
                    <li>Shift Operators</li>
                </ul>

            </div>

        </div>


        <!-- 4. CONTROL FLOW -->

        <h2 class="section-title">4. Control Flow Statements</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Decision Making</h3>

                <ul>
                    <li>if</li>
                    <li>if-else</li>
                    <li>else-if</li>
                    <li>Nested if</li>
                    <li>switch</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Looping Statements</h3>

                <ul>
                    <li>for loop</li>
                    <li>while loop</li>
                    <li>do-while loop</li>
                    <li>Nested loops</li>
                    <li>Infinite loops</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Jump Statements</h3>

                <ul>
                    <li>break</li>
                    <li>continue</li>
                    <li>return</li>
                </ul>

            </div>

        </div>


        <!-- 5. ARRAYS -->

        <h2 class="section-title">5. Arrays</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Arrays</h3>

                <ul>
                    <li>One Dimensional Array</li>
                    <li>Two Dimensional Array</li>
                    <li>Multidimensional Array</li>
                    <li>Array Initialization</li>
                    <li>Array Traversal</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Array Programs</h3>

                <ul>
                    <li>Largest Element</li>
                    <li>Smallest Element</li>
                    <li>Sorting</li>
                    <li>Searching</li>
                    <li>Reverse Array</li>
                    <li>Duplicate Elements</li>
                </ul>

            </div>

        </div>


        <!-- 6. OOPS -->

        <h2 class="section-title">6. Object-Oriented Programming</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Classes and Objects</h3>

                <ul>
                    <li>Class</li>
                    <li>Object</li>
                    <li>Methods</li>
                    <li>Constructors</li>
                    <li>this keyword</li>
                    <li>this()</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Inheritance</h3>

                <ul>
                    <li>Single Inheritance</li>
                    <li>Multilevel Inheritance</li>
                    <li>Hierarchical Inheritance</li>
                    <li>super keyword</li>
                    <li>super()</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Polymorphism</h3>

                <ul>
                    <li>Method Overloading</li>
                    <li>Method Overriding</li>
                    <li>Compile-Time Polymorphism</li>
                    <li>Runtime Polymorphism</li>
                    <li>Dynamic Method Dispatch</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Abstraction</h3>

                <ul>
                    <li>Abstract Class</li>
                    <li>Abstract Method</li>
                    <li>Interface</li>
                    <li>Multiple Inheritance using Interface</li>
                    <li>Default Methods</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Encapsulation</h3>

                <ul>
                    <li>Data Hiding</li>
                    <li>Private Variables</li>
                    <li>Getter Methods</li>
                    <li>Setter Methods</li>
                </ul>

            </div>

        </div>


        <!-- 7. PACKAGES -->

        <h2 class="section-title">7. Packages and Access Modifiers</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Packages</h3>

                <ul>
                    <li>Creating Packages</li>
                    <li>Using Packages</li>
                    <li>import keyword</li>
                    <li>Built-in Packages</li>
                    <li>User Defined Packages</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Access Modifiers</h3>

                <ul>
                    <li>private</li>
                    <li>default</li>
                    <li>protected</li>
                    <li>public</li>
                </ul>

            </div>

        </div>


        <!-- 8. STRING -->

        <h2 class="section-title">8. String Handling</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>String</h3>

                <ul>
                    <li>String Class</li>
                    <li>String Creation</li>
                    <li>String Pool</li>
                    <li>String Methods</li>
                    <li>String Comparison</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>StringBuilder</h3>

                <ul>
                    <li>StringBuilder</li>
                    <li>append()</li>
                    <li>insert()</li>
                    <li>delete()</li>
                    <li>reverse()</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>StringBuffer</h3>

                <ul>
                    <li>StringBuffer</li>
                    <li>Mutable Strings</li>
                    <li>append()</li>
                    <li>insert()</li>
                    <li>reverse()</li>
                </ul>

            </div>

        </div>


        <!-- 9. EXCEPTION -->

        <h2 class="section-title">9. Exception Handling</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Exception Concepts</h3>

                <ul>
                    <li>Exception</li>
                    <li>Error</li>
                    <li>Exception Hierarchy</li>
                    <li>Checked Exception</li>
                    <li>Unchecked Exception</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Exception Handling</h3>

                <ul>
                    <li>try</li>
                    <li>catch</li>
                    <li>finally</li>
                    <li>throw</li>
                    <li>throws</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Custom Exceptions</h3>

                <ul>
                    <li>User Defined Exception</li>
                    <li>Creating Exception Class</li>
                    <li>Handling Custom Exception</li>
                </ul>

            </div>

        </div>


        <!-- 10. COLLECTION -->

        <h2 class="section-title">10. Collection Framework</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>List</h3>

                <ul>
                    <li>ArrayList</li>
                    <li>LinkedList</li>
                    <li>Vector</li>
                    <li>Stack</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Set</h3>

                <ul>
                    <li>HashSet</li>
                    <li>LinkedHashSet</li>
                    <li>TreeSet</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Map</h3>

                <ul>
                    <li>HashMap</li>
                    <li>LinkedHashMap</li>
                    <li>TreeMap</li>
                    <li>Hashtable</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Collections Concepts</h3>

                <ul>
                    <li>Iterator</li>
                    <li>ListIterator</li>
                    <li>Comparable</li>
                    <li>Comparator</li>
                    <li>Collections Class</li>
                </ul>

            </div>

        </div>


        <!-- 11. GENERICS -->

        <h2 class="section-title">11. Generics</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Generics</h3>

                <ul>
                    <li>Generic Class</li>
                    <li>Generic Method</li>
                    <li>Type Safety</li>
                    <li>Bounded Types</li>
                    <li>Wildcards</li>
                </ul>

            </div>

        </div>


        <!-- 12. FILE HANDLING -->

        <h2 class="section-title">12. File Handling</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>File I/O</h3>

                <ul>
                    <li>File Class</li>
                    <li>FileReader</li>
                    <li>FileWriter</li>
                    <li>BufferedReader</li>
                    <li>BufferedWriter</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Streams</h3>

                <ul>
                    <li>InputStream</li>
                    <li>OutputStream</li>
                    <li>FileInputStream</li>
                    <li>FileOutputStream</li>
                    <li>Byte Streams</li>
                    <li>Character Streams</li>
                </ul>

            </div>

        </div>


        <!-- 13. MULTITHREADING -->

        <h2 class="section-title">13. Multithreading</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Thread Concepts</h3>

                <ul>
                    <li>Thread</li>
                    <li>Process</li>
                    <li>Thread Life Cycle</li>
                    <li>Thread Class</li>
                    <li>Runnable Interface</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Thread Methods</h3>

                <ul>
                    <li>start()</li>
                    <li>run()</li>
                    <li>sleep()</li>
                    <li>join()</li>
                    <li>yield()</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Synchronization</h3>

                <ul>
                    <li>Race Condition</li>
                    <li>synchronized method</li>
                    <li>synchronized block</li>
                    <li>Thread Safety</li>
                    <li>Inter-thread Communication</li>
                </ul>

            </div>

        </div>


        <!-- 14. JAVA 8 -->

        <h2 class="section-title">14. Java 8 Features</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Lambda Expression</h3>

                <ul>
                    <li>Lambda Syntax</li>
                    <li>Functional Interface</li>
                    <li>Predicate</li>
                    <li>Consumer</li>
                    <li>Supplier</li>
                    <li>Function</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Stream API</h3>

                <ul>
                    <li>Stream</li>
                    <li>filter()</li>
                    <li>map()</li>
                    <li>sorted()</li>
                    <li>collect()</li>
                    <li>forEach()</li>
                </ul>

            </div>

        </div>


        <!-- 15. INNER CLASSES -->

        <h2 class="section-title">15. Inner Classes</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Inner Classes</h3>

                <ul>
                    <li>Member Inner Class</li>
                    <li>Static Nested Class</li>
                    <li>Local Inner Class</li>
                    <li>Anonymous Inner Class</li>
                </ul>

            </div>

        </div>


        <!-- 16. ENUM -->

        <h2 class="section-title">16. Enum and Wrapper Classes</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Wrapper Classes</h3>

                <ul>
                    <li>Integer</li>
                    <li>Double</li>
                    <li>Character</li>
                    <li>Boolean</li>
                    <li>Autoboxing</li>
                    <li>Unboxing</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Enum</h3>

                <ul>
                    <li>enum</li>
                    <li>Enum Constants</li>
                    <li>Enum Methods</li>
                    <li>Enum with switch</li>
                </ul>

            </div>

        </div>


        <!-- 17. JDBC -->

        <h2 class="section-title">17. JDBC</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>JDBC Fundamentals</h3>

                <ul>
                    <li>JDBC Architecture</li>
                    <li>JDBC Driver</li>
                    <li>Connection</li>
                    <li>Statement</li>
                    <li>PreparedStatement</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Database Operations</h3>

                <ul>
                    <li>INSERT</li>
                    <li>UPDATE</li>
                    <li>DELETE</li>
                    <li>SELECT</li>
                    <li>ResultSet</li>
                </ul>

            </div>

        </div>


        <!-- 18. MEMORY -->

        <h2 class="section-title">18. Java Memory Management</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Memory Concepts</h3>

                <ul>
                    <li>Stack Memory</li>
                    <li>Heap Memory</li>
                    <li>Method Area</li>
                    <li>Garbage Collection</li>
                    <li>Objects and References</li>
                </ul>

            </div>

        </div>


        <!-- 19. IMPORTANT JAVA CONCEPTS -->

        <h2 class="section-title">19. Important Java Concepts</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Important Keywords</h3>

                <ul>
                    <li>this</li>
                    <li>super</li>
                    <li>static</li>
                    <li>final</li>
                    <li>abstract</li>
                    <li>interface</li>
                    <li>instanceof</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Object Class</h3>

                <ul>
                    <li>toString()</li>
                    <li>equals()</li>
                    <li>hashCode()</li>
                    <li>getClass()</li>
                    <li>clone()</li>
                </ul>

            </div>

        </div>


        <!-- 20. PRACTICE -->

        <h2 class="section-title">20. Java Practice</h2>

        <div class="topics">

            <div class="topic-card">

                <h3>Basic Programs</h3>

                <ul>
                    <li>Prime Number</li>
                    <li>Palindrome</li>
                    <li>Armstrong Number</li>
                    <li>Reverse Number</li>
                    <li>Factorial</li>
                    <li>Fibonacci Series</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Pattern Programs</h3>

                <ul>
                    <li>Star Patterns</li>
                    <li>Number Patterns</li>
                    <li>Character Patterns</li>
                    <li>Pyramid Patterns</li>
                    <li>Diamond Patterns</li>
                </ul>

            </div>


            <div class="topic-card">

                <h3>Interview Preparation</h3>

                <ul>
                    <li>Java MCQs</li>
                    <li>Output Questions</li>
                    <li>Coding Questions</li>
                    <li>Tricky Questions</li>
                    <li>Interview Questions</li>
                </ul>

            </div>

        </div>

    </div>


    <!-- FOOTER -->

    <div class="footer">

        <p>Core Java Learning Portal</p>

        <p>Java 8 | JSP | Servlet | JDBC | MySQL</p>

    </div>

</body>
</html>