create table Branch( Branch_name char(30),Branch_city char(30) not null, assets integer,primary key(Branch_name));
insert into Branch values('Brightone','Brooklyn',7100000);
insert into Branch values('Downtown','Brooklyn',9000000);
insert into Branch values('Mianas','toelie',1400000);
select * from Branch;

create table Customer( customer_name char(30), customer_street char(30) not null, customer_city char(30) not null, primary key(customer_name));
insert into Customer values('Saisab','shahee_minar_road','Dhaka');
insert into Customer values('Jamil','baksi_bazar_road','Dhaka');
insert into Customer values('Kawsar','baksi_bazar_road','Dhaka');
select * from Customer;

create table Account( account_number char(30),branch_name char(30) not null, balance integer,primary key(account_number));
insert into Account values('A-101','Brooklyn',7100000);
insert into Account values('A-102','Brooklyn',9000000);
insert into Account values('A-103','toelie',1400000);
select * from Account;

create table Loan( loan_number char(30), branch_name char(30) not null, amount integer, primary key(loan_number));
insert into Loan values('L-101','Brooklyn',7100000);
insert into Loan values('L-102','Brooklyn',9000000);
insert into Loan values('L-103','toelie',1400000);
select * from Loan;

create table Dipositor( customer_name char(30), account_number char(30) not null, primary key(customer_name,account_number));
insert into Dipositor values('Saisab','A-101');
insert into Dipositor values('Jamil','A-102');
insert into Dipositor values('Kawsar','A-103');
select * from Dipositor;

create table Borrower( customer_name char(30), loan_number char(30) not null, primary key(customer_name,loan_number));
insert into Borrower values('Saisab','L-101');
insert into Borrower values('Jamil','L-102');
insert into Borrower values('Kawsar','L-103');
select * from Borrower;


