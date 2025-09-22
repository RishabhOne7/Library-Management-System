Smart Library Management System (SLMS)

Project Overview
The Smart Library Management System is a modern solution to efficiently manage library operations. This system helps in organizing books, tracking members, managing loans, and monitoring staff activity. By digitizing all library records, it eliminates manual errors, reduces paperwork, and saves time for both library staff and members.

Key Features

1. Book Management
- Categorize books by genre, author, and category
- Maintain detailed information like price, publication year, and availability

2. Member Management
- Track registered members, contact details, and membership dates
- Monitor member activity and loan history

3. Loan Management
- Record loan and return dates
- Ensure timely returns and avoid overdue issues

4. Staff Management
- Track library staff roles and contact details
- Assign tasks and maintain accountability

Benefits
- Reduces manual errors and paperwork
- Provides quick access to books and member data
- Helps in analyzing library usage and trends
- Scalable for multiple branches or large collections

Database Perspective
The system uses a relational database to maintain relationships between entities like Books, Members, Loans, Categories, and Staff. The design follows normalization principles to avoid redundancy and maintain data integrity.

Tools Used
- MySQL / MariaDB
- MySQL Workbench / dbdiagram.io for ER Diagram
- SQL Scripts for database creation and sample data insertion

Database Entities
1. Books – Stores book details  
2. Members – Stores member details  
3. Loans – Tracks which member borrowed which book  
4. Categories – Categorizes books by genre or type  
5. Staff – Stores library staff information

ER Diagram
The database relationships are represented in an ER diagram (Library_ERD.png) included in this repository.
