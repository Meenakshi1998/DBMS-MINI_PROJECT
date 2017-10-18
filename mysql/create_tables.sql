create database Loan_Management;

use Loan_Management;


create table Loan_Application(App_id int,Loan_Type varchar(15),Loan_Amt int,Cust_Name varchar(20),Salary int,Gender varchar(6),Age int(2),Address varchar(50),MobNo numeric(12),WorkPhone numeric(12),EmailID varchar(30),primary key(App_id));

desc Loan_Application;


create table Registration(Rid int,FullName varchar(30),UserName varchar(20),Password varchar(20),MobNo numeric(12),EmailID varchar(30),primary key(Rid));

desc Registration;


create table Admin_Login(User_Name varchar(20),Password varchar(20),primary key(User_Name));

desc Admin_Login;


create table Loan_Rate(LNo int,Loan_Type varchar(30),Duration varchar(15),rate float(4,2),primary key(LNo));

desc Loan_Rate;


create table Cust_Info(C_ID int,Cust_Name varchar(30),PAN_No varchar(20),Gender varchar(6),City varchar(10),Address varchar(50),MobileNo numeric(12),Work_Phone varchar(20),Dob varchar(10),Status varchar(14),primary key(C_ID));

desc Cust_Info;


create table Loan_Info(Loan_ID int,C_ID int,Loan_Type varchar(30),Loan_Tenure int,Loan_Amount int,Interest_Type varchar(10),Interest_Rate float(4,2),IssueDate varchar(10),Mortgage_Details varchar(50),Guarantor_Name varchar(50),Address varchar(50),ContactNo varchar(30),primary key(Loan_ID),foreign key(C_ID) references Cust_Info(C_ID));

desc Loan_Info;


create table EMI(C_ID int,EMI_Amount float(12,1),Interest_Amount float(8,1),Total_Amount float(12,1),foreign key(C_ID) references Cust_Info(C_ID));

desc EMI;


create table Receive_EMI(C_ID int,ReceiptNo int,No_of_payment int,Receipt_Date varchar(10),EMI_Date varchar(10),EMI_Amount float(12,1),Late_Fine_Charge float(8,1),Total_Amount float(12,1),primary key(ReceiptNo),foreign key(C_ID) references Cust_Info(C_ID));

desc Receive_EMI;
