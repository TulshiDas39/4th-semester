drop table Branch;
drop table Customer;
drop table Account;
drop table Loan;
drop table Dipositor;
drop table Borrower;

create table Branch( Branch_name char(30),Branch_city char(30) not null, assets integer,primary key(Branch_name));
insert into Branch values('Brightone','Brooklyn',7100000);
insert into Branch values('Downtown','Brooklyn',9000000);
insert into Branch values('Mianas','Horseneck',400000);
insert into Branch values('North Town','Rye',3700000);
insert into Branch values('Perryridge','Horseneck',1700000);
insert into Branch values('Pownal','Benningtone',300000);
insert into Branch values('Redwood','Palo Alto',2100000);
insert into Branch values('Roun Hill','Horseneck',8000000);
select * from Branch;

create table Customer( customer_name char(30), customer_street char(30) not null, customer_city char(30) not null, primary key(customer_name));
insert into Customer values('Adams','Spring','Pittsfield');
insert into Customer values('Brooks','Senator','Brooklyn');
insert into Customer values('Curry','North','Rye');
insert into Customer values('Glenn','Sand Hill','Woodside');
insert into Customer values('Green','Walnut','Stamford');
insert into Customer values('Hayes','Main','Harrison');
insert into Customer values('Johnson','Alma','Palo Alto');
insert into Customer values('Jons','Main','Harrison');
insert into Customer values('Lindsay','Park','Pittsfield');
insert into Customer values('Smith','North','Rye');
insert into Customer values('Turner','Putnam','Stamford');
insert into Customer values('Williams','Nassau','Princeton');
select * from Customer;

create table Account( account_number char(30),constraint fk_mybranch foreign key (mybranch_name) references Branch(branch_name), balance integer,primary key(account_number));
insert into Account values('A-101','Downtown',500);
insert into Account values('A-215','Mianus',700);
insert into Account values('A-102','Perryridge',400);
insert into Account values('A-305','Round Hill',350);
insert into Account values('A-201','Brighton',900);
insert into Account values('A-222','Redwood',700);
insert into Account values('A-217','Brighton',750);
select * from Account;

create table Loan( loan_number char(30), branch_name char(30) not null, amount integer, primary key(loan_number));
insert into Loan values('L-11','Round Hill',900);
insert into Loan values('L-14','Downtown',1500);
insert into Loan values('L-15','Perryridge',1500);
insert into Loan values('L-16','Perryridge',1300);
insert into Loan values('L-17','Downtown',1500);
insert into Loan values('L-23','Redwood',2000);
insert into Loan values('L-93','Mianus',500);
select * from Loan;

create table Dipositor( customer_name char(30), account_number char(30) not null, primary key(customer_name,account_number));
insert into Dipositor values('Hayes','A-102');
insert into Dipositor values('Johnson','A-101');
insert into Dipositor values('Johnson','A-201');
insert into Dipositor values('Jones','A-217');
insert into Dipositor values('Lindsay','A-222');
insert into Dipositor values('Smith','A-215');
insert into Dipositor values('Turner','A-305');
select * from Dipositor;

create table Borrower( customer_name char(30), loan_number char(30) not null, primary key(customer_name,loan_number));
insert into Borrower values('Adams','L-16');
insert into Borrower values('Curry','L-93');
insert into Borrower values('Hayes','L-15');
insert into Borrower values('Jackson','L-14');
insert into Borrower values('Jones','L-17');
insert into Borrower values('Smith','L-11');
insert into Borrower values('Smith','L-23');
insert into Borrower values('Williams','L-17');





select * from Borrower;


