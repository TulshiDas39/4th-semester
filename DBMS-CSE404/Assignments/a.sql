
drop table Depositor;
drop table Borrower;
drop table Customer;
drop table Loan;
drop table Account;
drop table Branch;



CREATE TABLE Branch (
    branch_name varchar(30),
    branch_city varchar(30) NOT NULL,
    assets int,
    CONSTRAINT PK_Branch PRIMARY KEY (branch_name)
);


CREATE TABLE Customer(
    customer_name varchar(20),
    customer_street varchar(10) NOT NULL,
    customer_city varchar(20) NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (customer_name)
);

CREATE TABLE Account(
    account_number varchar(30),
    branch_name varchar(30) NOT NULL,
    balance int NOT NULL,
    CONSTRAINT PK_Account PRIMARY KEY (account_number), 
    CONSTRAINT FK_AcForeignKey FOREIGN KEY (branch_name) REFERENCES Branch(branch_name) 
);

CREATE TABLE Loan(
    loan_number varchar(30),
    branch_name varchar(30) NOT NULL,
    amount int NOT NULL,
    CONSTRAINT PK_Loan PRIMARY KEY (loan_number),
    CONSTRAINT FK_LoanForeignKey FOREIGN KEY (branch_name) REFERENCES Branch(branch_name)
);

CREATE TABLE Depositor(
    customer_name varchar(30),
    account_number varchar(30),
    CONSTRAINT PK_Depositor PRIMARY KEY (customer_name,account_number),
    CONSTRAINT FK_Dep1 FOREIGN KEY (customer_name) REFERENCES Customer(customer_name),
    CONSTRAINT FK_Dep2 FOREIGN KEY (account_number) REFERENCES Account(account_number)
);

CREATE TABLE Borrower(
    customer_name varchar(30),
    loan_number varchar(30),
    CONSTRAINT PK_Borrower PRIMARY KEY (customer_name,loan_number),
    CONSTRAINT FK_Bor1 FOREIGN KEY (customer_name) REFERENCES Customer(customer_name),
    CONSTRAINT FK_Bor2 FOREIGN KEY (loan_number) REFERENCES Loan(loan_number)
);

insert into Customer(customer_name,customer_street,customer_city) values ('Adams','Spring','Pittsfield');
insert into Customer(customer_name,customer_street,customer_city) values ('Brooks','Senator','Brooklyn');
insert into Customer(customer_name,customer_street,customer_city) values ('Curry','North','Rye');
insert into Customer(customer_name,customer_street,customer_city) values ('Glenn','Sand Hill','Woodside');
insert into Customer(customer_name,customer_street,customer_city) values ('Green','Walnut','Stamford');
insert into Customer(customer_name,customer_street,customer_city) values ('Hayes','Main','Harrison');
insert into Customer(customer_name,customer_street,customer_city) values ('Johnson','Alma','Palo Alto');
insert into Customer(customer_name,customer_street,customer_city) values ('Jones','Main','Harrison');
insert into Customer(customer_name,customer_street,customer_city) values ('Lindsay','Park','Pttisfield');
insert into Customer(customer_name,customer_street,customer_city) values ('Smith','North','Rye');
insert into Customer(customer_name,customer_street,customer_city) values ('Turner','Putnam','Stamford');
insert into Customer(customer_name,customer_street,customer_city) values ('Williams','Nassau','Princeton');

insert into Branch(branch_name,branch_city,assets) values('Brighton','Brooklyn',7100000);
insert into Branch(branch_name,branch_city,assets) values('Downtown','Brooklyn',9000000);
insert into Branch(branch_name,branch_city,assets) values('Mianus','Horseneck',400000);
insert into Branch(branch_name,branch_city,assets) values('North Town','Rye',3700000);
insert into Branch(branch_name,branch_city,assets) values('Perryridge','Horseneck',1700000);
insert into Branch(branch_name,branch_city,assets) values('Pownal','Bennington',300000);
insert into Branch(branch_name,branch_city,assets) values('Redwood','Palo Alto',2100000);
insert into Branch(branch_name,branch_city,assets) values('Round Hill','Horseneck',800000);



insert into Account(account_number,branch_name,balance) values('A-101','Downtown',500);
insert into Account(account_number,branch_name,balance) values('A-215','Mianus',700);
insert into Account(account_number,branch_name,balance) values('A-102','Perryridge',400);
insert into Account(account_number,branch_name,balance) values('A-305','Round Hill',350);
insert into Account(account_number,branch_name,balance) values('A-201','Brighton',900);
insert into Account(account_number,branch_name,balance) values('A-222','Redwood',700);
insert into Account(account_number,branch_name,balance) values('A-217','Brighton',750);

insert into Loan(loan_number,branch_name,amount) values('L-11','Round Hill',900);
insert into Loan(loan_number,branch_name,amount) values('L-14','Downtown',1500);
insert into Loan(loan_number,branch_name,amount) values('L-15','Perryridge',1500);
insert into Loan(loan_number,branch_name,amount) values('L-16','Perryridge',1300);
insert into Loan(loan_number,branch_name,amount) values('L-17','Downtown',1000);
insert into Loan(loan_number,branch_name,amount) values('L-23','Redwood',2000);
insert into Loan(loan_number,branch_name,amount) values('L-93','Mianus',500);

insert into Depositor(customer_name,account_number) values ('Hayes','A-102');
insert into Depositor(customer_name,account_number) values ('Johnson','A-101');
insert into Depositor(customer_name,account_number) values ('Johnson','A-201');
insert into Depositor(customer_name,account_number) values ('Jones','A-217');
insert into Depositor(customer_name,account_number) values ('Lindsay','A-222');
insert into Depositor(customer_name,account_number) values ('Smith','A-215');
insert into Depositor(customer_name,account_number) values ('Turner','A-305');

insert into Borrower(customer_name,loan_number) values ('Adams','L-16');
insert into Borrower(customer_name,loan_number) values ('Curry','L-93');
insert into Borrower(customer_name,loan_number) values ('Hayes','L-15');
insert into Borrower(customer_name,loan_number) values ('Johnson','L-14');
insert into Borrower(customer_name,loan_number) values ('Jones','L-17');
insert into Borrower(customer_name,loan_number) values ('Smith','L-11');
insert into Borrower(customer_name,loan_number) values ('Smith','L-23');
insert into Borrower(customer_name,loan_number) values ('Williams','L-17');


select * from account;
select * from customer;
select * from depositor;
select * from borrower;
select * from loan;



