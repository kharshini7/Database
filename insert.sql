insert into Branch values('kukatpally','Telangana',5000000);
insert into Branch values('Begumpet','Telangana',7000000);
insert into Branch values('sp road','Telangana',8000000);
insert into Branch values('Benz Circle','Vijayawada',235000000);
insert into Branch values('Labbipet','Vijayawada',45000000);
insert into Branch values('Hayathnagar','Telangana',50000000);
insert into Account values(12346,'kukatpally',40000);
insert into Account values(12347,'Begumpet',20000);
insert into Account values(12348,'Hayathnagar',10000);
insert into Account values(12349,'Benz Circle',50000);
insert into Account values(12344,'Labbipet',35000);
insert into Account values(12342,'kukatpally',25000);
insert into Account values(12341,'sp road',15000);
insert into Transactions values(12346,2,'W',3000,STR_TO_DATE("2014-07-21", "%Y-%m-%d"));
insert into Transactions values(12347,3,'D'4000,STR_TO_DATE("2014-07-22", "%Y-%m-%d"));
insert into Transactions values(12348,4,'D',6000,STR_TO_DATE("2015-06-11", "%Y-%m-%d"));
insert into Transactions values(12349,5,'W',5000,STR_TO_DATE("2013-05-03", "%Y-%m-%d"));
insert into Transactions values(12346,6,'W',1000,STR_TO_DATE("2014-04-12", "%Y-%m-%d"));
insert into Transactions values(12344,7,'D',20000,STR_TO_DATE("2012-02-2", "%Y-%m-%d"));
insert into Transactions values(12342,8,'W',2500,STR_TO_DATE("2020-01-21", "%Y-%m-%d"));
insert into Transactions values(12341,9,'D',4500,STR_TO_DATE("2021-03-20", "%Y-%m-%d"));
insert into Account_Type values (12346,'savings',6.4,0); 
insert into Account_Type values (12347,'checkings',0,70000);
insert into Account_Type values (12348,'checkings',0,5000);
insert into Account_Type values (12349,'savings',4,0);
insert into Account_Type values (12344,'savings',6,0);
insert into Account_Type values (12342,'checkings',0,60000);
insert into Account_Type values (12341,'savings',5,0);
insert into Loan values(12346,123,45000);
insert into Loan values(12347,124,50000);
insert into Loan values(12348,125,75000);
insert into Loan values(12349,126,1000000);
insert into Loan values(12344,127,55000);
insert into Loan values(12342,128,85000);
insert into Loan values(12341,129,95000);
insert into Payments values(123,1,5000,STR_TO_DATE("2014-07-21", "%Y-%m-%d"));
insert into Payments values(124,2,33000,STR_TO_DATE("2015-08-02", "%Y-%m-%d"));
insert into Payments values(125,7,36000,STR_TO_DATE("2016-04-16", "%Y-%m-%d"));
insert into Payments values(126,3,32000,STR_TO_DATE("2017-05-17", "%Y-%m-%d"));
insert into Payments values(127,4,3500,STR_TO_DATE("2018-06-05", "%Y-%m-%d"));
insert into Payments values(128,5,23000,STR_TO_DATE("2020-07-13", "%Y-%m-%d"));
insert into Payments values(129,6,35000,STR_TO_DATE("2021-08-20", "%Y-%m-%d"));
insert into Employee values(2222,'Pradeep',STR_TO_DATE("2020-12-27", "%Y-%m-%d"),4699386908,'S','kukatpally');
insert into Employee values(2223,'Lakshmi',STR_TO_DATE("2014-08-23", "%Y-%m-%d"),4699386922,'M','kukatpally');
insert into Employee values(2224,'Pradeep',STR_TO_DATE("2016-04-14", "%Y-%m-%d"),4699386954,'S','Begumpet');
insert into Employee values(2225,'anil',STR_TO_DATE("2017-03-15", "%Y-%m-%d"),4699386908,'S','sp road');
insert into Employee values(2226,'Arun',STR_TO_DATE("2010-02-19", "%Y-%m-%d"),4699386907,'M','Hayathnagar');
insert into Employee values(2227,'Kevin',STR_TO_DATE("2012-04-27", "%Y-%m-%d"),4699386906,'S','Benz Circle');
insert into Employee values(2228,'Likith',STR_TO_DATE("2018-09-07", "%Y-%m-%d"),4699386903,'S','Labbipet');
insert into Employee values(2229,'sathwick',STR_TO_DATE("2014-02-12", "%Y-%m-%d"),4699386904,'M','Begumpet');
insert into Employee values(2230,'rishindra',STR_TO_DATE("2019-09-08", "%Y-%m-%d"),4699386923,'S','sp road');
insert into Employee values(2231,'Dedeepya',STR_TO_DATE("2012-04-10", "%Y-%m-%d"),4699386921,'M','Benz Circle');
insert into Customer values(1111,12346,'Sreya','Kotha','Hyderabad','vinayaknagar',2222);
insert into Customer values(1118,12347,'Sreni','Kotla','Hyderabad','Nizampet',2223);
insert into Customer values(1113,12348,'Alekhya','siruvuri','Hyderabad','Lb nagar',2224);
insert into Customer values(1114,12349,'Sathvika','katta','Vijayawada','labbipet',2225);
insert into Customer values(1115,12344,'Anuradha','sheri','Vijayawada','Kanuru',2226);
insert into Customer values(1116,12342,'Yugandhar','Bandaru','Hyderabad','vinayaknagar',2227);
insert into Customer values(1117,12341,'Nikita','chimbli','Hyderabad','Kukatpally',2228);
insert into Dependents values(2222,'Keerthi','Female','Daughter');
insert into Dependents values(2229,'Alekhya','Female','Wife');
insert into Dependents values(2223,'Harshini','Female','cousin');
insert into Dependents values(2224,'phani','Male','Friend');
insert into Dependents values(2225,'siri','Female','Daughter');
insert into Dependents values(2226,'Rishi','male','Brother');
insert into Dependents values(2227,'Varun','male','cousin');
