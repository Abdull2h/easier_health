CREATE TABLE Patient(
    Id_Patent  number PRIMARY key, 
    Fname    VARCHAR(10), 
    Lname   VARCHAR(10),
    Birthday   date,
    typeOfBlood  VARCHAR(3),
    api_Key   int  UNIQUE, 
    gander    varchar(10),
    Phone_number int, 
    home_address VARCHAR(50)
)

CREATE table Medical_Record(
    ID_Med   number PRIMARY key, 
    diabetic VARCHAR(3),
    High_Blood_Pressure VARCHAR(3),
    cholestrol VARCHAR(3), 
    heart_dieases VARCHAR(3),
    asthma VARCHAR(3),
    Allergic_disease VARCHAR(3),
    Id_Patent int REFERENCES Patient
)

create table Hospital(
    ID_Hosptial number PRIMARY key, 
    name_hospital VARCHAR(50), 
    api_Key int UNIQUE, 
    city  VARCHAR(50), 
    Address_H  VARCHAR(50), 
    phone  int, 
    Email_Admin VARCHAR(50) UNIQUE
)

create table Pat_Hospital(
    Id_Patent int REFERENCES Patient, 
    ID_Hosptial int REFERENCES Hospital, 
    PRIMARY key(Id_Patent,ID_Hosptial),
    Last_Visit_Date  date, 
    ReasonForVisit VARCHAR(100)
)