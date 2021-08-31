-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 05:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('036-7-183-455', 'Big Data: A Tutorial-Based Approach', 'Nasir Raheem', 'bigd.jpg', 'Big Data: A Tutorial-Based Approach explores the tools and techniques used to bring about the marriage of structured and unstructured data. It focuses on Hadoop Distributed Storage and MapReduce Processing by implementing (i) Tools and Techniques of Hadoop Eco System, (ii) Hadoop Distributed File System Infrastructure, and (iii) efficient MapReduce processing. The book includes Use Cases and Tutorials to provide an integrated approach that answers the ‘What’, ‘How’, and ‘Why’ of Big Data.', '24.99', 11),
('111- 9-50421-X', 'AWS Certified Solutions Architect Study Guide: Associate SAA', 'Ben Piper, David Clinton', 'awscertguide.jpg', 'Everything you need to know for the Solutions Architect - Associate Exam, fully updated The AWS Certified Solutions Architect Study Guide: Associate (SAA-C01) Exam is your complete and fully updated resource to the AWS Solutions Architect - Associate certification. This invaluable Sybex study guide covers all relevant aspects of the AWS Solutions Architect job role, including mapping multi-tier architectures to AWS services, loose coupling and stateless systems, applying AWS security features, deploying and managing services, designing large scale distributed systems, and many more. Written by two AWS subject-matter experts, this self-study guide and reference provides all the tools and information necessary to master the exam, earn your certification, and gain insights into the job of an AWS Solutions Architect. Efficient and logical presentation of exam objectives allows for flexible study of topics, and powerful learning tools increase comprehension and retention of key exam elements. Practice questions, chapter reviews, and detailed examination of essential concepts fully prepare you for the AWS Solutions Architect - Associate certification. The certification is highly valued in IT and cloud computing professionals. Now in a new edition–reflecting the latest changes, additions, and updates to the AWS Solutions Architect - Associate certification exam guide–this book is your complete, one-stop resource: Access the Sybex interactive learning environment and test bank, including chapter tests, practice exams, electronic flashcards, and a searchable glossary of key terms. Learn all the components of the AWS exam and know what to expect on exam day Review challenging exam topics and focus on the areas that need improvement Expand your AWS skillset and keep pace with current cloud computing technologies The AWS Certified Solutions Architect Study Guide: Associate (SAA-C01) Exam enables you to validate your skills, increase your competitive advantage, and take the next step on your career path. Comprehensive and up-to-date content and superior study tools make this guide a must-have resource for those seeking AWS Solutions Architect - Associate certification.', '48.49', 9),
('111-9-0558-433', 'AWS Certified Solutions Architect Practice Tests: Associate ', 'Brett McLaughling', 'awscert.jpg', '1,000 practice questions with answers and explanations! With five unique practice tests, covering the five AWS Certified Solutions Architect Associate Exam objective domains, PLUS one additional practice exam, AWS Certified Solutions Architect Practice Tests provides a total of 1,000 practice test questions to make sure you are prepared for exam day. Coverage of all exam objective domains includes: Design Resilient Architectures, Define Performant Architectures, Specify Secure Applications and Architectures, Design Cost-Optimized Architectures, Define Operationally Excellent Architectures. This book will help you: - Gain confidence as you prepare for the SAA-C01 exam - Ensure you are set up for success with 1,000 practice questions - When you are ready, test your knowledge with the Sybex online interactive learning environment - Get that highly desired AWS certification Prepare smarter, not harder, with Sybex\'s superior study tools.', '29.99', 9),
('111-9-371-848', 'AWS for Developers For Dummies', 'John Paul Muller', 'aws.jpg', 'Modern businesses rely on Infrastructure-as-a-Service (IaaS)—a setup in which someone else foots the bill to create application environments—and developers are expected to know how to write both platform-specific and IaaS-supported applications. If you\'re a developer who writes desktop and web applications but have little-to-no experience with cloud development, this book is an essential tool in getting started in the IaaS environment with Amazon Web Services', '17.64', 12),
('111-9-477-646', 'CASP+ CompTIA Advanced Security Practitioner Study Guide: Ex', 'Jeff T. Parker, Michael Gregg', 'CASP.jpg', 'The CASP CompTIA Advanced Security Practitioner Study Guide: Exam CAS-003, Third Edition, offers invaluable preparation for exam CAS-003. Covering 100 percent of the exam objectives, this book provides expert walk-through of essential security concepts and processes to help you tackle this challenging exam with full confidence. Practical examples and real-world insights illustrate critical topics and show what essential practices look like on the ground, while detailed explanations of technical and business concepts give you the background you need to apply identify and implement appropriate security solutions. End-of-chapter reviews help solidify your understanding of each objective, and cutting-edge exam prep software features electronic flashcards, hands-on lab exercises, and hundreds of practice questions to help you test your knowledge in advance of the exam.', '27.87', 9),
('111-9-533-031', 'Cryptocurrency Investing For Dummies', 'Kiana Danial', 'crypto.jpg', 'While the cryptocurrency market is known for its volatility—and this volatility is often linked to the ever-changing regulatory environment of the industry—the entire cryptocurrency market is expected to reach a total value of $1 trillion this year. If you want to get in on the action, this book shows you how.', '20.89', 1),
('148-4-238-370', 'Digital Forensics Basics: A Practical Guide Using Windows OS', 'Nihad A. Hassan', 'digital.jpg', 'Use this hands-on, introductory guide to understand and implement digital forensics to investigate computer crime using Windows, the most widely used operating system. This book provides you with the necessary skills to identify an intruder\'s footprints and to gather the necessary digital evidence in a forensically sound manner to prosecute in a court of law.\r\n\r\nDirected toward users with no experience in the digital forensics field, this book provides guidelines and best practices when conducting investigations as well as teaching you how to use a variety of tools to investigate computer crime. You will be prepared to handle problems such as law violations, industrial espionage, and use of company resources for private use.\r\n\r\nDigital Forensics Basics is written as a series of tutorials with each task demonstrating how to use a specific computer forensics tool or technique. Practical information is provided and users can read a task and then implement it directly on their devices. Some theoretical information is presented to define terms used in each technique and for users with varying IT skills', '39.99', 4),
('148-4-241-487', 'Practical Machine Learning and Image Processing', 'Himanshu Singh', 'practical.jpg', 'Gain insights into image-processing methodologies and algorithms, using machine learning and neural networks in Python. This book begins with the environment setup, understanding basic image-processing terminology, and exploring Python concepts that will be useful for implementing the algorithms discussed in the book. You will then cover all the core image processing algorithms in detail before moving onto the biggest computer vision library: OpenCV. You’ll see the OpenCV algorithms and how to use them for image processing.', '13.30', 4),
('148-4-242-939', 'Cyber Operations: Building, Defending, and Attacking 2nd Edi', 'Mike O\'Leary', 'cyberop.jpg', 'Know how to set up, defend, and attack computer networks with this revised and expanded second edition.\r\n\r\nYou will learn to configure your network from the ground up, beginning with developing your own private virtual test environment, then setting up your own DNS server and AD infrastructure. You will continue with more advanced network services, web servers, and database servers and you will end by building your own web applications servers, including WordPress and Joomla!. Systems from 2011 through 2017 are covered, including Windows 7, Windows 8, Windows 10, Windows Server 2012, and Windows Server 2016 as well as a range of Linux distributions, including Ubuntu, CentOS, Mint, and OpenSUSE.\r\n\r\nKey defensive techniques are integrated throughout and you will develop situational awareness of your network and build a complete defensive infrastructure, including log servers, network firewalls, web application firewalls, and intrusion detection systems.\r\nOf course, you cannot truly understand how to defend a network if you do not know how to attack it, so you will attack your test systems in a variety of ways. You will learn about Metasploit, browser attacks, privilege escalation, pass-the-hash attacks, malware, man-in-the-middle attacks, database attacks, and web application attacks.', '37.29', 4),
('148-4-243-145', 'Android Espresso Revealed: Writing Automated UI Tests', 'Denys Zelenchuk', 'androidespresoo.jpg', 'Write Android user interface (UI) tests using Google Espresso for Android. You’ll cover all the major topics of writing functional UI automated tests using the Espresso testing framework, including different ways of running automated tests, architecting test projects in an easy and maintainable way, and using tools which help to implement automated tests with less effort.', '18.99', 4),
('148-4-244-265', 'Ray Tracing Gems', 'Eric Haines', 'ray.jpg', 'This book is a must-have for anyone serious about rendering in real time. With the announcement of new ray tracing APIs and hardware to support them, developers can easily create real-time applications with ray tracing as a core component. As ray tracing on the GPU becomes faster, it will play a more central role in real-time rendering. Ray Tracing Gems provides key building blocks for developers of games, architectural applications, visualizations, and more. Experts in rendering share their knowledge by explaining everything from nitty-gritty techniques that will improve any ray tracer to mastery of the new capabilities of current and future hardware.', '49.99', 12),
('149-1-996-692', 'Head First Kotlin: A Brain-Friendly Guide', 'Dawn Griffiths', 'head.png', 'Head First Kotlin is a complete introduction to coding in Kotlin. This hands-on book helps you learn the Kotlin language with a unique method that goes beyond syntax and how-to manuals and teaches you how to think like a great Kotlin developer. You’ll learn everything from language fundamentals to collections, generics, lambdas, and higher-order functions. Along the way, you’ll get to play with both object-oriented and functional programming. If you want to really understand Kotlin, this is the book for you.', '41.00', 3),
('149-2-024-333', 'Python for Finance: Mastering Data-Driven Finance 2nd Editio', 'Yves Hilpicsch', 'pythonfinance.jpg', 'The financial industry has recently adopted Python at a tremendous rate, with some of the largest investment banks and hedge funds using it to build core trading and risk management systems. Updated for Python 3, the second edition of this hands-on book helps you get started with the language, guiding developers and quantitative analysts through Python libraries and tools for building financial applications and interactive financial analytics.', '24.99', 3),
('149-2-031-089', 'Fundamentals of Data Visualization', 'Claus O. Wilke', 'fundamental.jpg', 'Effective visualization is the best way to communicate information from the increasingly large and complex datasets in natural and social sciences. But with the increasing power of visualization software today, scientists, engineers, and business analysts often have to navigate a bewildering array of visualization choices and options.\r\n\r\nThis practical book takes you through many commonly encountered visualization problems and pitfalls and provides simple and clear guidelines on how to turn large datasets into clear and compelling figures. What visualization type is best for the story you want to tell? How do you make informative figures that are visually pleasing? Author Claus O. Wilke teaches you the elements most critical to successful data visualization.', '34.99', 3),
('152-2-537-902', 'Big Data Processing', 'T. Rewati,K. Muneeswaran', 'bigdatap.png', 'Due to the increasing availability of affordable internet services, the number of users, and the need for a wider range of multimedia-based applications, internet usage is on the rise. With so many users and such a large amount of data, the requirements of analyzing large data sets leads to the need for further advancements to information processing.', '19.99', 10),
('159-3-279-523', 'The Linux Command Line: A Complete Introduction', 'William E. Shoots', 'linux.jpg', 'You\'ve experienced the shiny, point-and-click surface of your Linux computer–now dive below and explore its depths with the power of the command line.\r\n\r\nThe Linux Command Line takes you from your very first terminal keystrokes to writing full programs in Bash, the most popular Linux shell (or command line). Along the way you\'ll learn the timeless skills handed down by generations of experienced, mouse-shunning gurus: file navigation, environment configuration, command chaining, pattern matching with regular expressions, and more.', '19.25', 12),
('161-7-295-248', 'Testing Vue.js Applications', 'Edd Yerburgh', 'testing.jpg', 'With Testing Vue.js Applications, you\'ll discover effective testing methods for Vue applications. You\'ll enjoy author Edd Yerburgh\'s engaging style and fun real-world examples as you learn to use the Jest framework to run tests for a Hacker News application built with Vue, Vuex, and Vue Router. This comprehensive guide teaches the best testing practices in Vue along with an evergreen methodology that applies to any web dev process.', '25.05', 2),
('168-3-921-801', 'Game Development Using Python', 'James R. Parker', 'gamedev.jpg', 'This book will guide you through the basic game development process using Python, covering game topics including graphics, sound, artificial intelligence, animation, game engines, etc. Real games are created as you work through the text and significant parts of a game engine are built and made available for download. The companion disc contains all of the resources described in the book, e.g. example code, game assets, video/sound editing software, and color figures. Instructor resources are available for use as a textbook.', '50.01', 2),
('178-8-629-302', 'Hands-On Embedded Programming with C++17', 'Maya Posch', 'embedded.jpg', 'C++ is a great choice for embedded development, most notably, because it does not add any bloat, extends maintainability, and offers many advantages over different programming languages. Hands-On Embedded Programming with C++17 will show you how C++ can be used to build robust and concurrent systems that leverage the available hardware resources.\r\n\r\nStarting with a primer on embedded programming and the latest features of C++17, the book takes you through various facets of good programming. You\'ll learn how to use the concurrency, memory management, and functional programming features of C++ to build embedded systems. You will understand how to integrate your systems with external peripherals and efficient ways of working with drivers. This book will also guide you in testing and optimizing code for better performance and implementing useful design patterns. As an additional benefit, you will see how to work with Qt, the popular GUI library used for building embedded systems.', '38.27', 5),
('178-8-831-438', 'Hands-On Functional Programming with TypeScript', 'Remo H. Jansen', 'handsfunct.jpg', 'Functional programming is a powerful programming paradigm that can help you to write better code. However, learning functional programming can be complicated, and the existing literature is often too complex for beginners. This book is an approachable introduction to functional programming and reactive programming with TypeScript for readers without previous experience in functional programming with JavaScript, TypeScript , or any other programming language.\r\n\r\nThe book will help you understand the pros, cons, and core principles of functional programming in TypeScript. It will explain higher order functions, referential transparency, functional composition, and monads with the help of effective code examples. Using TypeScript as a functional programming language, you\'ll also be able to brush up on your knowledge of applying functional programming techniques, including currying, laziness, and immutability, to real-world scenarios.\r\n\r\nBy the end of this book, you will be confident when it comes to using core functional and reactive programming techniques to help you build effective applications with TypeScript.', '39.99', 5),
('178-8-839-153', 'Learning Java by Building Android Games 2nd Edition', 'John Horton', 'javagames.png', 'Android is one of the most popular mobile operating systems. It uses the most popular programming language, Java, as the primary language for building apps of all types. Unlike others, this book doesn\'t assume that youthat you already have Java proficiency.', '30.05', 5),
('178-8-998-923', 'React Native Cookbook 2nd Edition', 'Dan Ward', 'react.jpg', 'f you are a developer looking to create mobile applications with maximized code reusability and minimized cost, then React Native is here to help. With this practical guide, you will be able to build attractive UIs, tackle common mobile development-related issues, and achieve improved performance in mobile environments.\r\n\r\nThis book starts with common techniques for React Native customization and helps you set up your development platforms. Over the course of the book, a wide variety of step-by-step recipes are designed with both built-in React Native and custom third-party components that you will create, style, and animate. You will create real-world browser-based authentication, build a fully functional audio player, and integrate with Google maps. You will also explore different strategies for working with data, including leveraging the popular Redux library and optimizing your app\'s dataflow. You will then get an introduction to writing native device functionality for new and already existing native projects.\r\n\r\nFinally, you will learn how app deployment works, and tips and tricks for writing performant code. By the end of the book, you\'ll have gained enough knowledge to build full iOS and Android applications using React Native.', '31.11', 5),
('178-9-531-241', 'Hands-On High Performance Programming with Qt 5', 'Marek Krajewski', 'qt5.jpg', 'Achieving efficient code through performance tuning is one of the key challenges faced by many programmers. This book looks at Qt programming from a performance perspective. You\'ll explore the performance problems encountered when using the Qt framework and means and ways to resolve them and optimize performance.\r\n\r\nThe book highlights performance improvements and new features released in Qt 5.9, Qt 5.11, and 5.12 (LTE). You\'ll master general computer performance best practices and tools, which can help you identify the reasons behind low performance, and the most common performance pitfalls experienced when using the Qt framework. In the following chapters, you\'ll explore multithreading and asynchronous programming with C++ and Qt and learn the importance and efficient use of data structures. You\'ll also get the opportunity to work through techniques such as memory management and design guidelines, which are essential to improve application performance. Comprehensive sections that cover all these concepts will prepare you for gaining hands-on experience of some of Qt\'s most exciting application fields - the mobile and embedded development domains.', '27.03', 5),
('178-9-533-384', 'Tableau 2019.x Cookbook', 'Dmitry Anoshin, Teodora Matic, Slaven Bogdanovic, Tania Linc', 'tableaux.jpg', 'Tableau has been one of the most popular business intelligence solutions in recent times, thanks to its powerful and interactive data visualization capabilities. Tableau 2019.x Cookbook is full of useful recipes from industry experts, who will help you master Tableau skills and learn each aspect of Tableau\'s ecosystem.\r\n\r\nThis book is enriched with features such as Tableau extracts, Tableau advanced calculations, geospatial analysis, and building dashboards. It will guide you with exciting data manipulation, storytelling, advanced filtering, expert visualization, and forecasting techniques using real-world examples. From basic functionalities of Tableau to complex deployment on Linux, you will cover it all. Moreover, you will learn advanced features of Tableau using R, Python, and various APIs. You will learn how to prepare data for analysis using the latest Tableau Prep. In the concluding chapters, you will learn how Tableau fits the modern world of analytics and works with modern data platforms such as Snowflake and Redshift. In addition, you will learn about the best practices of integrating Tableau with ETL using Matillion ETL.', '29.99', 5),
('977-1-234-89341-1', 'Java Volume I-Fundamentals', 'Cay S. Hortsmann', 'javacore.jpg', 'Don’t mind the impressive 1000 pages — you can easily read this book from cover to cover. It puts aside the playful tone and focuses on detailed explanations of Java core. Each chapter is devoted to a certain subject, starting from introduction to the language and Java programming environment and moving to data structures, objects and classes and so on. Unlike many books for beginners, Core Java gives an explicit coverage of collections and generics, which is useful for real programming.', '15.99', 7),
('977-1-234-89341-2', 'Learn Python3-the Hard Way', 'Zed A. Shaw', 'python.jpg', 'In Learn Python 3 the Hard Way, you\'ll learn Python by working through 52 brilliantly crafted exercises. Read them. Type their code precisely. (No copying and pasting ) Fix your mistakes. Watch the programs run. As you do, you\'ll learn how a computer works; what good programs look like; and how to read, write, and think about code. Zed then teaches you even more in 5+ hours of video where he shows you how to break, fix, and debug your code--live, as he\'s doing the exercises', '22.45', 8),
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobileapp.jpg', 'Now, one book can help you master mobile app development with both markets-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', '20.00', 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doinggood.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logicprogram.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'projs.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'webapp.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beautyjs.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'proasp4new.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'a.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', 'Mikael Olsson', 'cnew.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'csharpnew.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there\'s still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', '20.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(6, 'Andrei Craciunoiu', 'Cazarmii, 14', 'Slatina', '239823', 'Romania'),
(7, 'Craciunoiu', 'Tunarilor,10', 'Slatina', '221043', 'Romania');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(8, 6, '75.99', '2021-04-24 20:28:23', 'Andrei Craciunoiu', 'Cazarmii, 14', 'Slatina', '239823', 'Romania'),
(9, 7, '796.74', '2021-04-25 12:16:50', 'Craciunoiu', 'Tunarilor,10', 'Slatina', '221043', 'Romania');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 4),
(5, '978-1-118-94924-5', '20.00', 1),
(7, '978-1-118-94924-5', '20.00', 1),
(7, '978-1-484216-40-8', '20.00', 3),
(8, '977-1-234-89341-1', '15.99', 1),
(8, '978-0-321-94786-4', '20.00', 2),
(8, '978-1-44937-075-6', '20.00', 1),
(9, '978-1-484216-40-8', '20.00', 1),
(9, '148-4-241-487', '13.30', 1),
(9, '148-4-242-939', '37.29', 20),
(9, '111-9-371-848', '17.64', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley'),
(7, 'Pico'),
(8, 'Addison-Wesley Professional'),
(9, 'Sybex'),
(10, 'Hadoop'),
(11, 'CRC Press'),
(12, 'Open');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
