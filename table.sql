create table Branch( 
   B_name VARCHAR(20),
   location VARCHAR(20),
   Assets Float,
   primary key (B_name)
   );

create table Account(
     Account_no int,
     B_name varchar(20),
     Balance float,
     primary key (Account_no),
     foreign key(B_name) references Branch(B_name)
    );

create table Transactions(
      Account_no int,
      Trans_id int,
      T_Type VARCHAR(20),
      Trans_amount Float,
      Date_of_transaction date,
      primary key (Trans_id),
      foreign key(Account_no) references Account(Account_no)
     );

Create table Account_Type(
      Account_no int,
      Acc_type VARCHAR(20),
      interest_rate Float,
      overdrafts Float,
      foreign key(Account_no) references Account(Account_no)
     );

create table Customer(
      Cus_SSN int,
      Account_no int,
      First_name varchar(20),
      Last_name varchar(20),
      city varchar(20),
      street varchar(20),
      Emp_SSN int,
      primary key (Cus_SSN),
      foreign key(Account_no) references Account(Account_no),
      foreign key(Emp_SSN) references Employee(Emp_SSN)
      );


create table Loan( 
       Account_no int,
       Loan_id int,
       Amount Float,   
       primary key (Loan_id),
       foreign key(Account_no) references Account(Account_no)
      );

create table Payments(
       Loan_id int,
       payment_id int,
       Amount Float,
       date_of_payment date,
       primary key (payment_id),
       foreign key(Loan_id) references Loan(Loan_id)
       );   

create table Employee (
       Emp_SSN INT,
       emp_name  VARCHAR(20),
       startdate date,
       Mobile_no  bigint,
       Etype VARCHAR(1),
       B_name VARCHAR(20),
       primary key (Emp_SSN),
       foreign key(B_name) references Branch(B_name)
       );

create table Dependents (
      emp_SSN int,
      Dep_name varchar(20),
      gender  VARCHAR(20),
      relationship VARCHAR(20), 
      foreign key (Emp_SSN) references Employee(emp_SSN)
      );