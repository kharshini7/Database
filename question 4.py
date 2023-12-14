from ast import While
import mysql.connector as msql 
from datetime import date
from sqlalchemy import create_engine
import pymysql
import pandas as pd
import sqlalchemy
from sqlalchemy import create_engine

connection = pymysql.connect(host='acadmysqldb001p.uta.edu',
							 user='hxk0046',
							 password='har$haK7',
							 db='hxk0046')
mycursor = connection.cursor()
print("Welcome to Sreya Bank")
print("Choose the required options by entering the number")
choice=int(input("1. New Customer \n2. New Loan\n3. Add Employee \n4. Loan Payment\n5. New Account\n6. Add Branch\n7. Exit \n"))
while(choice != 7):
    if choice==1:
        B_name=input("Enter the Branch name: ")
        location=input("Enter the Location: ")
        Assets=float(input("Enter the Assests value: "))
        params = (B_name,location,Assets)
        mycursor.execute("INSERT INTO Branch(B_name,location,Assets) VALUES (%s,%s,%s)",params)
        Account_no=mycursor.fetchall()
        Account_no=input("Enter Account number: ")
        params = (Account_no,B_name)
        mycursor.execute("INSERT INTO Account(Account_no,B_name) VALUES (%s,%s)",params)
        Emp_SSN=input("Enter employee SSN: ")
        emp_name=input("Enter employee name: ")
        startdate=input("Enter first day of employment: ")
        Mobile_no=input("Enter Mobile_no: ")
        Etype=input("Enter Employee type: ")
        params = (Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name)
        mycursor.execute("INSERT INTO Employee(Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name) VALUES (%s,%s,%s,%s,%s,%s);",params)  
        Cus_SSN=input("Enter Customer SSN: ")
        First_name=input("Enter First name: ")
        Last_name=input("Enter Last name: ")
        city=input("Enter city: ")
        street=input("Enter street: ")
        params = (Cus_SSN,Account_no,First_name,Last_name,city,street,Emp_SSN)
        mycursor.execute("INSERT INTO Customer(Cus_SSN,Account_no,First_name,Last_name,city,street,Emp_SSN) VALUES (%s,%s,%s,%s,%s,%s,%s);",params)
        Trans_id=input("Enter Transaction id: ")
        T_Type=input("Enter Type of transaction: ")
        Trans_amount=input("Enter the Amount: ")
        date_of_transaction=input("Enter the Date of transaction: ")
        params = (Account_no,Trans_id,T_Type,Trans_amount,date_of_transaction)
        mycursor.execute("INSERT INTO Transactions(Account_no,Trans_id,T_Type,Trans_amount,date_of_transaction) VALUES (%s,%s,%s,%s,%s);",params)
        cloan=int(input("If loan required 1.Yes/2.No: "))
        if cloan==1:
            Amount=float(input("Enter the amount of loan required: "))
            Loan_id=input("Enter loan id: "),
            params = (Account_no,Amount,Loan_id)
            mycursor.execute("INSERT INTO Loan(Account_no,Amount,Loan_id) VALUES (%s,%s,%s);",params)
            
    
    

    elif choice==2:
        Account_no=int(input("Enter the account number: "))
        params = (Account_no)
        mycursor.execute("Select * from Loan where Account_no=%s;",params)
        A=mycursor.fetchall()
        for X in A :
         print (X)
     


    elif choice==3:
        
        B_name=input("Enter the Branch name: ")
        location=input("Enter the Location: ")
        Assets=float(input("Enter the Assests value: "))
        params = (B_name,location,Assets)
        mycursor.execute("INSERT INTO Branch(B_name,location,Assets) VALUES (%s,%s,%s)",params)
        Emp_SSN=input("Enter employee SSN: ")
        emp_name=input("Enter employee name: ")
        startdate=input("Enter first day of employment: ")
        Mobile_no=input("Enter Mobile_no: ")
        Etype=input("Enter Employee type: ")
        params = (Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name)
        mycursor.execute("INSERT INTO Employee(Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name) VALUES (%s,%s,%s,%s,%s,%s);",params)  
    


    elif choice==4:
        payment_id=int(input("Enter the payment Number: "))
        mycursor.execute("Select * from Payments where payment_id= %s;",payment_id)
        P=mycursor.fetchall()
        for Y in P :
            print(Y)
       

    elif choice==5:
        B_name=input("Enter the Branch name: ")
        location=input("Enter the Location: ")
        Assets=float(input("Enter the Assests value: "))
        params = (B_name,location,Assets)
        mycursor.execute("INSERT INTO Branch(B_name,location,Assets) VALUES (%s,%s,%s)",params)
        Account_no=mycursor.fetchall()
        Account_no=input("Enter Account number: ")
        params = (Account_no,B_name)
        mycursor.execute("INSERT INTO Account(Account_no,B_name) VALUES (%s,%s)",params)
        Emp_SSN=input("Enter employee SSN: ")
        emp_name=input("Enter employee name: ")
        startdate=input("Enter first day of employment: ")
        Mobile_no=input("Enter Mobile_no: ")
        Etype=input("Enter Employee type: ")
        params = (Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name)
        mycursor.execute("INSERT INTO Employee(Emp_SSN,emp_name,startdate,Mobile_no,Etype,B_name) VALUES (%s,%s,%s,%s,%s,%s);",params) 
        Cus_SSN=input("Enter Customer SSN: ")
        First_name=input("Enter First name: ")
        Last_name=input("Enter Last name: ")
        city=input("Enter city: ")
        street=input("Enter street: ")
        params = (Cus_SSN,Account_no,First_name,Last_name,city,street,Emp_SSN)
        mycursor.execute("INSERT INTO Customer(Cus_SSN,Account_no,First_name,Last_name,city,street,Emp_SSN) VALUES (%s,%s,%s,%s,%s,%s,%s);",params)
        Acc_type=input("Enter Account Type: ")
        interest_rate=input("Enter rate of interest: ")
        overdrafts=input("Enter overdraft amount: ")
        params=(Account_no,Acc_type,interest_rate,overdrafts)
        mycursor.execute("INSERT INTO Account_Type(Account_no,Acc_type,interest_rate,overdrafts) VALUES (%s,%s,%s,%s)",params)



    elif  choice==6 :
        B_name=input("Enter the Branch name: ")
        location=input("Enter the Location: ")
        Assets=float(input("Enter the Assests value: "))
        params = (B_name,location,Assets)
        mycursor.execute("INSERT INTO Branch(B_name,location,Assets) VALUES (%s,%s,%s)",params)


     
    engine = create_engine("mysql+pymysql://hxk0046:har$haK7@acadmysqldb001p.uta.edu:3306/hxk0046")
    conn = engine.connect()
    conn = engine.raw_connection()

    connection.commit()
    choice=int(input("1. New Customer \n2. New Loan\n3. Add Employee \n4. Loan Payment\n5. New Account\n6. Add Branch\n7. Exit \n"))

connection.close()
