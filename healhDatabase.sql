CREATE TABLE Patient(
    Id_Patent  number PRIMARY key, 
    Fname    VARCHAR(10), 
    Lname   VARCHAR(10),
    Birthday   date,
    api_Key   int  UNIQUE, 
    gander    varchar(10),
    Phone_number int, 
    home_address VARCHAR(50)
)

CREATE table Medical_Record(
    ID_Med   number PRIMARY key, 
    Have_X_Ray  VARCHAR(6), 
    result_XRay  VARCHAR(100), 
    Have_Analysis VARCHAR(6), 
    ResutlOfAnalysis varchar(100),
    Takeing_Medicen VARCHAR(6), 
    whatIsMedicen VARCHAR(100),
    TypeOFdisease varchar(100), 
    Chronic_Disease VARCHAR(6), 
    commends VARCHAR(500), 
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