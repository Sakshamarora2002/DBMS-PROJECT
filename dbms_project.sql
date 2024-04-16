CREATE TABLE CITY
(CNAME VARCHAR(30) NOT NULL,
STATE_NAME VARCHAR(30), 
COUNTRY VARCHAR(30),
PRIMARY KEY(CNAME));

INSERT INTO CITY VALUES(
    'CHANDIGARH',
    'PUNJAB',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'VISAKHAPATNAM',
    'ANDHRA PRADESH',
    'INDIA'
);


INSERT INTO CITY VALUES(
    'VIJAYWADA',
    'ANDHRA PRADESH',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'DELHI',
    'DELHI',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'SURAT',
    'GUAJRAT',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'COCHIN',
    'KERALA',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'MUMBAI',
    'MAHARASHTRA',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'JAIPUR',
    'RAJASTHAN',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'HYDERABAD',
    'TELANGANA',
    'INDIA'
);

INSERT INTO CITY VALUES(
    'CHENNAI',
    'TAMIL NADU',
    'INDIA'
);

select * from CITY;

-- Table 2

CREATE TABLE AIRPORT
(AP_NAME VARCHAR(100) NOT NULL,
STATE_NAME VARCHAR(30), 
COUNTRY VARCHAR(30) NOT NULL,
CNAME VARCHAR(30),
PRIMARY KEY(AP_NAME),
FOREIGN KEY(CNAME) REFERENCES CITY(CNAME) ON DELETE CASCADE);

INSERT INTO AIRPORT VALUES(
    'CHANDIGARH INTERNATIONAL AIRPORT',
    'PUNJAB',
    'INDIA',
    'CHANDIGARH'    
);

INSERT INTO AIRPORT VALUES(
    'VISAKHAPATNAM INTERNATIONAL AIRPORT',
    'ANDHRA PRADESH',
    'INDIA',
    'VISAKHAPATNAM'    
);

INSERT INTO AIRPORT VALUES(
    'VIJAYWADA INTERNATIONAL AIRPORT',
    'ANDHRA PRADESH',
    'INDIA',
    'VIJAYWADA'    
);

INSERT INTO AIRPORT VALUES(
    'INDIRA GANDHI INTERNATIONAL AIRPORT',
    'DELHI',
    'INDIA',
    'DELHI'    
);

INSERT INTO AIRPORT VALUES(
	'SURAT INTERNATIONAL AIRPORT',
    'GUAJRAT',
    'INDIA',
    'SURAT'    
);

INSERT INTO AIRPORT VALUES(
    'COCHIN INTERNATIONAL AIRPORT',
    'KERALA',
    'INDIA',
    'COCHIN'    
);

INSERT INTO AIRPORT VALUES(
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT',
    'MAHARASHTRA',
    'INDIA',
    'MUMBAI'    
);

INSERT INTO AIRPORT VALUES(
    'JAIPUR INTERNATIONAL AIRPORT',
    'RAJASTHAN',
    'INDIA',
    'JAIPUR'    
);

INSERT INTO AIRPORT VALUES(
    'RAJIV GANDHI INTERNATIONAL AIRPORT',
    'TELANGANA',
    'INDIA',
    'HYDERABAD'    
);

INSERT INTO AIRPORT VALUES(
    'CHENNAI INTERNATIONAL AIRPORT ',
    'TAMIL NADU',
    'INDIA',
    'CHENNAI'    
);


-- Table 3

CREATE TABLE AIRLINE
(AL_ID VARCHAR(3) NOT NULL,
AL_NAME VARCHAR(50),
AL_MILES VARCHAR(1),
AL_RATING FLOAT,
PRIMARY KEY(AL_ID));

INSERT INTO AIRLINE VALUES(
    1,
    'AIR INDIA',
    'T',
    4
);

INSERT INTO AIRLINE VALUES(
    2,
    'INDI GO',
    'T',
    3.5
);

INSERT INTO AIRLINE VALUES(
    3,
    'SPICE JET',
    'F',
    3.75
);

INSERT INTO AIRLINE VALUES(
    4,
    'AIR INDIA',
    'T',
    4
);

INSERT INTO AIRLINE VALUES(
    5,
    'VISTARA',
    'F',
    3
);

INSERT INTO AIRLINE VALUES(
    6,
    'AIRASIA INDIA',
    'F',
    3.75
);

INSERT INTO AIRLINE VALUES(
    7,
    'KINGFISHER',
    'T',
    4.25
);

INSERT INTO AIRLINE VALUES(
    8,
    'AIRASIA INDIA',
    'F',
    3.75
);

INSERT INTO AIRLINE VALUES(
    9,
    'SPICE JET ',
    'T',
    3.75
);

INSERT INTO AIRLINE VALUES(
    10,
    'SPICE JET ',
    'T',
    3.75
);


-- Table 4

CREATE TABLE AIRPORT_N_AIRLINE
(AL_ID VARCHAR(30) NOT NULL,
AP_NAME VARCHAR(100) NOT NULL,
PRIMARY KEY(AL_ID, AP_NAME),
FOREIGN KEY(AL_ID) REFERENCES AIRLINE(AL_ID) ON DELETE CASCADE,
FOREIGN KEY(AP_NAME) REFERENCES AIRPORT(AP_NAME) ON DELETE CASCADE);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    1,
    'CHANDIGARH INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    2,
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    3,
    'VIJAYWADA INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    4,
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    5,
    'SURAT INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    6,
    'COCHIN INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    7,
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    8,
    'JAIPUR INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    9,
    'RAJIV GANDHI INTERNATIONAL AIRPORT'
);

INSERT INTO AIRPORT_N_AIRLINE VALUES(
    10,
    'CHENNAI INTERNATIONAL AIRPORT '
);

-- Table 5

CREATE TABLE FLIGHT(  
FID VARCHAR(30) NOT NULL,
SOURCE VARCHAR(100),
DESTINATION VARCHAR(100),
DEPARTURE_TIME VARCHAR(30),
ARRIVAL_TIME VARCHAR(30),
STATUS VARCHAR(10),
DURATION VARCHAR(30),
F_TYPE VARCHAR(10),
TOTAL_LAYOVER_TIME VARCHAR(30),
NO_OF_STOPS INT DEFAULT NULL,
AL_ID VARCHAR(30) NOT NULL,
PRIMARY KEY(FID),
FOREIGN KEY(AL_ID) REFERENCES AIRLINE(AL_ID) ON DELETE CASCADE);

INSERT INTO FLIGHT VALUES(
    1,
    'CHANDIGARH',
    'DELHI',
    '12:00',
    '13:15',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    1
);

INSERT INTO FLIGHT VALUES(
    2,
    'CHANDIGARH',
    'HYDERABAD',
    '10:00',
    '12:45',
    'ON TIME',
    '165 MIN',
    'NON-STOP',
    '',
    '0',
    2
);
INSERT INTO FLIGHT VALUES(
    3,
    'CHANDIGARH',
    'MUMBAI',
    '9:30',
    '13:30',
    'ON TIME',
    '240 MIN',
    'ONE-STOP',
    '90 MIN',
    '1',
    3
);
INSERT INTO FLIGHT VALUES(
    4,
    'VISAKHAPATNAM',
    'CHANDIGARH',
    '6:30',
    '12:05',
    'ON TIME',
    '350 MIN',
    'ONE-STOP',
    '120 MIN',
    '1',
    4
);
INSERT INTO FLIGHT VALUES(
    5,
    'VISAKHAPATNAM',
    'COCHIN',
    '17:15',
    '18:30',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    5
);
INSERT INTO FLIGHT VALUES(
    6,
    'VIJAYWADA',
    'SURAT',
    '11:00',
    '14:15',
    'ON TIME',
    '135 MIN',
    'NON-STOP',
    '',
    '0',
    6
);
INSERT INTO FLIGHT VALUES(
    7,
    'DELHI',
    'JAIPUR',
    '16:00',
    '17:10',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    7
);
INSERT INTO FLIGHT VALUES(
    8,
    'SURAT ',
    'CHENNAI',
    '12:00',
    '16:15',
    'ON TIME',
    '255 MIN',
    'ONE-STOP',
    '120 MIN',
    '1',
    8
);
INSERT INTO FLIGHT VALUES(
    9,
    'DELHI',
    'CHANDIGARH',
    '15:00',
    '16:15',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    9
);
INSERT INTO FLIGHT VALUES(
    10,
    'COCHIN',
    'VISAKHAPATNAM',
    '18:00',
    '22:00',
    'ON TIME',
    '240 MIN',
    'ONE-STOP',
    '90 MIN ',
    '1',
    10
);
INSERT INTO FLIGHT VALUES(
    11,
    'MUMBAI ',
    'CHANDIGARH ',
    '6:00',
    '12:00',
    'ON TIME',
    '360 MIN',
    'TWO-STOP',
    '360 MIN ',
    '2',
    10
);
INSERT INTO FLIGHT VALUES(
    12,
    'MUMBAI',
    'JAIPUR',
    '11:00',
    '13:00',
    'ON TIME',
    '120 MIN',
    'NON-STOP',
    '',
    '0',
    9
);
INSERT INTO FLIGHT VALUES(
    13,
    'JAIPUR',
    'DELHI',
    '7:00',
    '8:05',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    8
);
INSERT INTO FLIGHT VALUES(
    14,
    'HYDERABAD',
    'CHENNAI',
    '12:00',
    '13:15',
    'ON TIME',
    '75 MIN',
    'NON-STOP',
    '',
    '0',
    7
);
INSERT INTO FLIGHT VALUES(
    15,
    'CHENNAI',
    'DELHI',
    '10:00',
    '15:45',
    'ON TIME',
    '345 MIN',
    'TWO-STOP',
    '150 MIN',
    '2',
    6
);
INSERT INTO FLIGHT VALUES(
    16,
    'CHENNAI',
    'SURAT',
    '13:00',
    '15:15',
    'ON TIME',
    '135 MIN',
    'NON-STOP',
    '',
    '0',
    5
);



-- Table 6

CREATE TABLE PASSENGER
(PID INT NOT NULL,
PASSPORTNO VARCHAR(10) NOT NULL,
FNAME VARCHAR(20),
M VARCHAR(10),
LNAME VARCHAR(20),
ADDRESS VARCHAR(100),
PHONE INT,
AGE INT,
SEX VARCHAR(1),
FID VARCHAR(10) NOT NULL,
PRIMARY KEY(PID),
FOREIGN KEY(FID) REFERENCES FLIGHT(FID) ON DELETE CASCADE);
alter table PASSENGER modify m varchar(10);
INSERT INTO PASSENGER VALUES(
    1,
    'OY6588',
    'KRITISH',
    '',
    'NARULA',
    '194 Bank Colony Chandigarh',
    7969142069,
    23,
    'M',
    1    
);

INSERT INTO PASSENGER VALUES(
    2,
    'OT4580',
    'HARDIK',
    '',
    'GARG',
    '54 Sunny Enclave Chandigarh ',
    9835142078,
    21,
    'M',
    1    
);

INSERT INTO PASSENGER VALUES(
    3,
    'SY6345',
    'SAKSHAM',
    '',
    'ARORA',
    '303 Green Avenue Appt Chandigarh',
    9867642069,
    45,
    'M',
    1    
);

INSERT INTO PASSENGER VALUES(
    4,
    'RT5439',
    'KINGSHUK',
    'KUMAR',
    'MUKHERJEE',
    '83/85, Nandlal Jani Road, Dana Bunder, Chinch Bunder',
    95697644569,
    19,
    'M',
    2   
);

INSERT INTO PASSENGER VALUES(
    5,
    'ER3465',
    'SACNHI ',
    '',
    'BATRA',
    'B- 68 Basement, Part 1',
    9869764353,
    51,
    'F',
    2   
);

INSERT INTO PASSENGER VALUES(
    6,
    'OY6969',
    'RAHUL ',
    '',
    'CHATERVEDI',
    'White C/403, Aamrpali Appt',
    9869142069,
    36,
    'M',
    3   
);

INSERT INTO PASSENGER VALUES(
    7,
    'FG3476',
    ' JACQUELINE',
    '',
    ' FERNANDEZ',
    'No 138, 1st floor 33A Cross Road Mumbai',
    9869123069,
    39,
    'F',
    4  
);

INSERT INTO PASSENGER VALUES(
    8,
    'QT6941',
    'SALMAN',
    '',
    'KHAN',
    '45 Villow Appt Hyderabad',
    7969142479,
    40,
    'M',
    5   
);

INSERT INTO PASSENGER VALUES(
    9,
    'TO4950',
    'AISHWARYA ',
    '',
    'RAI',
    '61 ',
    9569142069,
    36,
    'F',
    5   
);

INSERT INTO PASSENGER VALUES(
    10,
    'TP5049',
    'SAJAL',
    '',
    'JAIN',
    '24 Yashwant Kunj Lbs Marg Hariniwas Circlenaupada Thane',
    7985142069,
    27,
    'M',
    6    
);

INSERT INTO PASSENGER VALUES(
    11,
    'GB6970',
    'ROCHAK',
    '',
    'RANJAN',
    'Wz O/87 Outer Ring Road',
    7909142069,
    19,
    'M',
    7    
);

INSERT INTO PASSENGER VALUES(
    12,
    'WC3465',
    'DURGA HARSHA',
    'VARDHAN',
    'TILLAPUDI',
    '6 Yashwant Kunj Lbs Marg Hariniwas Circlenaupada Thane',
    9898123469,
    21,
    'M',
    7    
);

INSERT INTO PASSENGER VALUES(
    13,
    'OY4567',
    'TEJVIR',
    '',
    'SINGH',
    '50 / Prabhadevi Indl Estate Near Siddhivinayak Temple Prabhadevi',
    9869246069,
    31,
    'M',
    8   
);

INSERT INTO PASSENGER VALUES(
    14,
    'SE2543',
    'RAM',
    '',
    'CHAHAL',
    '303 / New Anant Bhavan N.natha St Chinch Bunder',
    9869142069,
    36,
    'M',
    9    
);

INSERT INTO PASSENGER VALUES(
    15,
    'OY6969',
    'NIKITA',
    '',
    'KUMAR',
    'No. 1, New Bangaru Naidu Colony',
    9865789069,
    24,
    'F',
    10    
);
INSERT INTO PASSENGER VALUES(
    16,
    'OR8413',
    'HARSIH',
    '',
    'KUMAR',
    'No. 3, New Bangaru Naidu Colony',
    9845769069,
    25,
    'M',
    10    
);


-- Table 7

CREATE TABLE EMPLOYEE
(EID INT NOT NULL,
FNAME VARCHAR(20),
M VARCHAR(10),
LNAME VARCHAR(20),
ADDRESS VARCHAR(100),
PHONE INT,
AGE INT,
SEX VARCHAR(1),
JOBTYPE VARCHAR(30),
SALARY INT,
SHIFT VARCHAR(20),
AP_NAME VARCHAR(100) NOT NULL,
PRIMARY KEY(EID),
FOREIGN KEY(AP_NAME) REFERENCES AIRPORT(AP_NAME) ON DELETE CASCADE);
alter table EMPLOYEE modify m varchar(10);
select * from EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(
    1,
    'ROHIT',
    '',
    'RANA',
    '77/2 Vagdevi School drive way',
    9249242039,
    29,
    'M',
    'PILOT',
    2500000,
    'MORNING',
    'CHANDIGARH INTERNATIONAL AIRPORT'
);

INSERT INTO EMPLOYEE VALUES(
    2,
    'HARSHPREET',
    '',
    'KAUR',
    '19C Main Road Gopal Nagar',
    9249244659,
    25,
    'F',
    'RECEPTIONIST',
    75000,
    'MORNING',
    'CHANDIGARH INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    3,
    'RAM',
    '',
    'CHAND',
    '205 A Greenwood Appt',
    9248232523,
    32,
    'M',
    'JANITOR',
    25000,
    'MORNING',
    'CHANDIGARH INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    4,
    'RAMANDEEP',
    '',
    'SINGH',
    '19 Bengaluru - Mysuru Road',
    9249242039,
    26,
    'F',
    'AIR HOSTESS',
    250000,
    'MORNING',
    'CHANDIGARH INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    5,
    'ROHAN',
    '',
    'SHARMA',
    'B1 Puranik City Phase 3 Internal Road New Delhi',
    7987642039,
    29,
    'M',
    'PILOT',
    1500000,
    'EVENING',
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    6,
    'RAMIKA',
    '',
    'SEN',
    '1074 1st Main Road Sadgunte Palya ',
    9249242039,
    25,
    'F',
    'CO-PILOT',
    1000000,
    'EVENING',
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    7,
    'HARDIK',
    '',
    'SHARMA',
    '421B Sri Krishna Temple Road',
    7989242039,
    29,
    'M',
    'PILOT',
    1200000,
    'MORNING',
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    8,
    'DEEPAK',
    '',
    'PUROHIT',
    'Gold Gym, No 2 Convent Road Coimbatore',
    9299942039,
    27,
    'M',
    'CO-PILOT',
    700000,
    'MORNING',
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    9,
    'RAM',
    '',
    'PAL',
    'No.43/3,New No.43/5 Borewell Road Visakhapatnam ',
    9209842039,
    30,
    'M',
    'JANITOR',
    20000,
    'MORNING',
    'VISAKHAPATNAM INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    10,
    'ARMAAN',
    '',
    'BISHNOI',
    '',
    9249752639,
    21,
    'M',
    'PILOT',
    2000000,
    'MORNING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    11,
    'ROHIT',
    '',
    'PUNDIR',
    '625 Lady Jehangir Road Mumbai',
    9249253239,
    32,
    'M',
    'CO-PILOT',
    2200000,
    'MORNING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    12,
    'SHRESTHA',
    '',
    'SHARMA',
    '4 Pipeline Road Mumbai',
    9249242000,
    29,
    'M',
    'JANITOR',
    30000,
    'MORNING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);

INSERT INTO EMPLOYEE VALUES(
    13,
    'SAMIRA',
    '',
    'GARG',
    'IT3/IT4 Thane Belapur Road Vijaywada',
    9223442000,
    24,
    'F',
    'AIR HOSTESS',
    300000,
    'MORNING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    14,
    'SAMIRA',
    '',
    'SHARMA',
    'no 280 Mahatma Gandhi Road Jalandhar',
    7812872000,
    26,
    'F',
    'AIR HOSTESS',
    320000,
    'EVENING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    15,
    'SITA',
    '',
    'RANI',
    '18 Lodhi Garden Lodhi Road Vijaywada',
    9237628200,
    32,
    'F',
    'JANITOR',
    35000,
    'EVENING',
    'VIJAYWADA INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    16,
    'AJAYVEER',
    'SINGH',
    'DHILLON',
    '47 Prithviraj Road New Delhi',
    9249212301,
    25,
    'M',
    'PILOT',
    3000000,
    'MORNING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    17,
    'DEEPAK',
    '',
    'SHARMA',
    '201, Somajiguda, opposite Rajbhavan New Delhi',
    9213942031,
    27,
    'M',
    'CO-PILOT',
    1200000,
    'MORNING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    18,
    'SUNEHA',
    '',
    'KUMAR',
    '133/2 Shastri Nagar New Delhi',
    9249244970,
    22,
    'F',
    'AIR HOSTESS',
    300000,
    'MORNING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    19,
    'SITA',
    '',
    'RAMAN',
    'No. 21 Himayatnagar Village NH163 Ghaziabad',
    9249242320,
    31,
    'F',
    'JANITOR',
    30000,
    'MORNING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    20,
    'NANDIKA',
    '',
    'SHARMA',
    '509 VJTI Marg New Delhi',
    9249264500,
    24,
    'F',
    'PILOT',
    1500000,
    'EVENING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    21,
    'SAMRIDHI',
    '',
    'WADHWA',
    '201, Somajiguda, opposite Rajbhavan, Hyderabad',
    9241876000,
    27,
    'F',
    'AIR HOSTESS',
    300000,
    'EVENING',
    'INDIRA GANDHI INTERNATIONAL AIRPORT'
);



INSERT INTO EMPLOYEE VALUES(
    22,
    'SHRESTHA',
    '',
    'SHARMA',
    '924 Outer Ring Road Bangalore',
    9234842000,
    30,
    'M',
    'PILOT',
    2700000,
    'MORNING',
    'SURAT INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    23,
    'SAM',
    '',
    'VASHISTH',
    '298/2 1st Main road New Delhi',
    7980242000,
    25,
    'M',
    'CO-PILOT',
    30000,
    'MORNING',
    'SURAT INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    24,
    'SAMIKSHA',
    '',
    'MAHAJAN',
    'No. 123/124 Manipal County Road Manipal',
    7540243100,
    27,
    'F',
    'RECEPTIONIST',
    300000,
    'MORNING',
    'SURAT INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    25,
    'ROHIT',
    '',
    'SHARMA',
    '68 4th Avenue Surat',
    9200042000,
    29,
    'M',
    'PILOT',
    1500000,
    'EVENING',
    'SURAT INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    26,
    'JASHANJEET',
    '',
    'KAUR',
    '',
    9254342000,
    26,
    'F',
    'AIR HOSTESS',
    270000,
    'EVENING',
    'SURAT INTERNATIONAL AIRPORT' 
);

INSERT INTO EMPLOYEE VALUES(
    27,
    'AJAYVEER',
    'SINGH',
    'DHILLON',
    '47 Prithviraj Road New Delhi',
    9099216301,
    25,
    'M',
    'PILOT',
    3000000,
    'MORNING',
    'COCHIN INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    28,
    'DEEPAK',
    '',
    'SHARMA',
    '',
    9214242031,
    27,
    'M',
    'CO-PILOT',
    1200000,
    'MORNING',
    'COCHIN INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    29,
    'SHAKTI',
    '',
    'KUMAR',
    '133/2 Shastri Nagar New Delhi',
    9956244970,
    22,
    'F',
    'AIR HOSTESS',
    300000,
    'MORNING',
    'COCHIN INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    30,
    'KAMLESH',
    '',
    'KUMAR',
    'No. 21 Himayatnagar Village NH163 Cochin',
    9439242320,
    31,
    'F',
    'JANITOR',
    30000,
    'MORNING',
    'COCHIN INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    31,
    'NANDIKA',
    '',
    'CHUNNEJA',
    '619 Gandhi Marg New Delhi',
    9549264500,
    24,
    'F',
    'PILOT',
    1500000,
    'EVENING',
    'COCHIN INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    32,
    'SAMRIDHI',
    '',
    'SINGH',
    '201, Somajiguda, opposite Rajbhavan, Cochin',
    9248766000,
    27,
    'F',
    'AIR HOSTESS',
    300000,
    'EVENING',
    'COCHIN INTERNATIONAL AIRPORT'
);


INSERT INTO EMPLOYEE VALUES(
    33,
    'SWEZAL',
    '',
    'MAHAJAN',
    '67 Vagdevi School drive way Goa',
    9249908039,
    29,
    'M',
    'PILOT',
    2500000,
    'MORNING',
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);

INSERT INTO EMPLOYEE VALUES(
    57,
    'HARDIK',
    '',
    'MANHAS',
    '136/137 2nd Road Bangalore',
    9249908039,
    29,
    'M',
    'CO-PILOT',
    2000000,
    'MORNING',
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);

INSERT INTO EMPLOYEE VALUES(
    34,
    'ARSHPREET',
    '',
    'KAUR',
    '19C Main Road Gopal Nagar ',
    9098244650,
    25,
    'F',
    'RECEPTIONIST',
    100000,
    'MORNING',
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    35,
    'RAMESH',
    '',
    'SHARMA',
    '205 A Greenwood Appt Mumbai',
    9249709523,
    32,
    'M',
    'JANITOR',
    25000,
    'MORNING',
	'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);




INSERT INTO EMPLOYEE VALUES(
    36,
    'RAM',
    '',
    'KUMAR',
    '2C Garden Estate Road Mumbai',
    9242074039,
    26,
    'M',
    'PILOT',
    2500000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    37,
    'RASMIKA',
    '',
    'MAHAJAN',
    '111/112 7th Road Jaipur',
    9856234039,
    27,
    'F',
    'CO-PILOT',
    1000000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    38,
    'SHEENA',
    '',
    'KUMAR',
    '1 Railway Colony Road Sai Baba Mandir Jaisalmer',
    9972342039,
    26,
    'F',
    'AIR HOSTESS',
    250000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    39,
    'RAMANDEEP',
    '',
    'SINGH',
    '713 5th Cross Road Bikaner',
    9200142039,
    26,
    'M',
    'AIR HOSTESS',
    250000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    40,
    'RAMANPREET',
    '',
    'KAUR',
    '4 Tulsidham Road Kota',
    9978342039,
    26,
    'F',
    'AIR HOSTESS',
    250000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT'
);

INSERT INTO EMPLOYEE VALUES(
    41,
    'NANDIKA',
    '',
    'KAPOOR',
    '54 Gandhi Marg Jaisalmer',
    9549264500,
    24,
    'F',
    'PILOT',
    1500000,
    'EVENING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    42,
    'SIMRIDHI',
    '',
    'SINGH',
    '202, Somajiguda, opposite Rajbhavan, Cochin',
    9240126000,
    27,
    'F',
    'AIR HOSTESS',
    300000,
    'EVENING',
    'JAIPUR INTERNATIONAL AIRPORT'
);





INSERT INTO EMPLOYEE VALUES(
    43,
    'ROHAN',
    '',
    'SHARMA',
    'B1 Puranik City Phase 3 Internal Road New Delhi',
    7987234039,
    29,
    'M',
    'PILOT',
    1500000,
    'EVENING',
    'JAIPUR INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    44,
    'RAMIKA',
    '',
    'SEN',
    '1074 1st Main Road Sadgunte Palya ',
    9799242039,
    25,
    'F',
    'CO-PILOT',
    1000000,
    'EVENING',
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    45,
    'HARDIK',
    '',
    'SHARMA',
    '421B Sri Krishna Temple Road',
    7989200039,
    29,
    'M',
    'PILOT',
    1200000,
    'MORNING',
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT'
);
INSERT INTO EMPLOYEE VALUES(
    46,
    'DEEPAK',
    '',
    'PUROHIT',
    'Gold Gym, No 2 Convent Road Coimbatore',
    9299942039,
    27,
    'M',
    'CO-PILOT',
    700000,
    'MORNING',
    'JAIPUR INTERNATIONAL AIRPORT' 
);
INSERT INTO EMPLOYEE VALUES(
    47,
    'RAMPAL',
    '',
    'SINGH',
    'No.43/3,New No.43/5 Borewell Road Visakhapatnam ',
    9200942039,
    30,
    'M',
    'JANITOR',
    20000,
    'MORNING',
    'COCHIN INTERNATIONAL AIRPORT'
);




INSERT INTO EMPLOYEE VALUES(
    48,
    'ROHIT',
    '',
    'RATHORE',
    '245 16th Cross Rd, 1st Sector Chandigarh',
    9347062039,
    29,
    'M',
    'PILOT',
    1500000,
    'MORNING',
    'CHENNAI INTERNATIONAL AIRPORT '
);
INSERT INTO EMPLOYEE VALUES(
    49,
    'RAMIKA',
    '',
    'KUMARI',
    '238 Main Road Sadgunte Palya ',
    9930462039,
    25,
    'F',
    'CO-PILOT',
    1000000,
    'MORNING',
    'CHENNAI INTERNATIONAL AIRPORT '
);
INSERT INTO EMPLOYEE VALUES(
    50,
    'SHARDUL',
    '',
    'SHARMA',
    '142 Sri Krishna Temple Road',
    7914285439,
    29,
    'M',
    'PILOT',
    1200000,
    'EVENING',
    'CHENNAI INTERNATIONAL AIRPORT '
);
INSERT INTO EMPLOYEE VALUES(
    51,
    'DEEPAK',
    '',
    'KWATRA',
    'Gold Gym, No 2 Convent Road Coimbatore',
    9085312039,
    27,
    'M',
    'CO-PILOT',
    700000,
    'EVENING',
    'CHENNAI INTERNATIONAL AIRPORT '
);
INSERT INTO EMPLOYEE VALUES(
    52,
    'RAMPAL',
    '',
    'YADAV',
    'New No.43/5 Borewell Road Visakhapatnam ',
    9201265765,
    30,
    'M',
    'JANITOR',
    20000,
    'EVENING',
    'CHENNAI INTERNATIONAL AIRPORT '
);


-- Table 8

CREATE TABLE TICKET
(TICKET_NUMBER INT NOT NULL,
SOURCE VARCHAR(10),
DESTINATION VARCHAR(10),
DATE_OF_BOOKING DATE,
DATE_OF_TRAVEL DATE,
SEATNO VARCHAR(5),
CLASS VARCHAR(15),
PRICE INT,
PID INT,
AL_ID VARCHAR(3) NOT NULL,
PRIMARY KEY(TICKET_NUMBER,AL_ID),
FOREIGN KEY(PID) REFERENCES PASSENGER(PID) ON DELETE CASCADE);
ALTER TABLE TICKET MODIFY SOURCE VARCHAR(20);
ALTER TABLE TICKET MODIFY DESTINATION VARCHAR(20);
INSERT INTO TICKET VALUES(
    1,
    'CHANDIGARH',
    'DELHI',
    TO_DATE('28-FEB-2022','DD-MON-YYYY'),
    TO_DATE('30-MAR-2022','DD-MON-YYYY'),
    67,
    'FIRST',
    6000,
    1,
    1
);
INSERT INTO TICKET VALUES(
    2,
    'CHANDIGARH',
    'HYDERABAD',
    TO_DATE('10-MAR-2022','DD-MON-YYYY'),
    TO_DATE('31-MAR-2022','DD-MON-YYYY'),
    6,
    'FIRST',
    8000,
    2,
    1
);
INSERT INTO TICKET VALUES(
    3,
    'CHANDIGARH',
    'MUMBAI',
    TO_DATE('28-FEB-2022','DD-MON-YYYY'),
    TO_DATE('1-APR-2022','DD-MON-YYYY'),
    32,
    'BUSINESS',
    10000,
    3,
    1
);
INSERT INTO TICKET VALUES(
    4,
    'VISAKHAPATNAM',
    'CHANDIGARH',
    TO_DATE('27-FEB-2022','DD-MON-YYYY'),
    TO_DATE('2-APR-2022','DD-MON-YYYY'),
    9,
    'ECONOMY',
    6000,
    4,
    2
);
INSERT INTO TICKET VALUES(
    5,
    'VISAKHAPATNAM',
    'COCHIN',
    TO_DATE('4-MAR-2022','DD-MON-YYYY'),
    TO_DATE('3-APR-2022','DD-MON-YYYY'),
    25,
    'FIRST',
    5500,
    5,
    2
);
INSERT INTO TICKET VALUES(
    6,
    'VIJAYWADA',
    'SURAT',
	TO_DATE('25-MAR-2022','DD-MON-YYYY'),
    TO_DATE('4-APR-2022','DD-MON-YYYY'),
    64,
    'ECONOMY',
    4500,
    6,
    3
);
INSERT INTO TICKET VALUES(
    7,
    'DELHI',
    'JAIPUR',
    TO_DATE('21-MAR-2022','DD-MON-YYYY'),
    TO_DATE('5-APR-2022','DD-MON-YYYY'),
    32,
    'FIRST',
    6000,
    7,
    4
);
INSERT INTO TICKET VALUES(
    8,
    'SURAT',
    'CHENNAI',
    TO_DATE('5-MAR-2022','DD-MON-YYYY'),
    TO_DATE('6-APR-2022','DD-MON-YYYY'),
    34,
    'BUSINESS',
    11000,
    8,
    5
);
INSERT INTO TICKET VALUES(
    9,
    'DELHI',
    'CHANDIGARH',
    TO_DATE('23-MAR-2022','DD-MON-YYYY'),
    TO_DATE('7-APR-2022','DD-MON-YYYY'),
    52,
    'FIRST',
    2000,
    9,
    5
);
INSERT INTO TICKET VALUES(
    10,
    'COCHIN',
    'VISAKHAPATNAM',
    TO_DATE('3-MAR-2022','DD-MON-YYYY'),
    TO_DATE('8-APR-2022','DD-MON-YYYY'),
    42,
    'FIRST',
    6000,
    10,
    6
);
INSERT INTO TICKET VALUES(
    11,
    'MUMBAI',
    'CHANDIGARH',
    TO_DATE('15-MAR-2022','DD-MON-YYYY'),
    TO_DATE('9-APR-2022','DD-MON-YYYY'),
    12,
    'ECONOMY',
    7000,
    11,
    7
);
INSERT INTO TICKET VALUES(
    12,
    'MUMBAI',
    'JAIPUR',
    TO_DATE('17-MAR-2022','DD-MON-YYYY'),
    TO_DATE('10-APR-2022','DD-MON-YYYY'),
    62,
    'FIRST',
    6000,
    12,
    7
);
INSERT INTO TICKET VALUES(
    13,
    'JAIPUR',
    'DELHI',
    TO_DATE('11-MAR-2022','DD-MON-YYYY'),
    TO_DATE('11-APR-2022','DD-MON-YYYY'),
    9,
    'FIRST',
    6000,
    13,
    8
);
INSERT INTO TICKET VALUES(
    14,
    'HYDERABAD',
    'CHENNAI',
    TO_DATE('22-MAR-2022','DD-MON-YYYY'),
    TO_DATE('12-APR-2022','DD-MON-YYYY'),
    49,
    'FIRST',
    7500,
    14,
    9
);
INSERT INTO TICKET VALUES(
    15,
    'CHENNAI',
    'DELHI',
    TO_DATE('19-MAR-2022','DD-MON-YYYY'),
    TO_DATE('13-APR-2022','DD-MON-YYYY'),
    34,
    'BUSINESS',
    15000,
    15,
    10
);
INSERT INTO TICKET VALUES(
    16,
    'CHENNAI',
    'SURAT',
    TO_DATE('1-APR-2022','DD-MON-YYYY'),
    TO_DATE('14-APR-2022','DD-MON-YYYY'),
    16,
    'FIRST',
    6500,
    16,
    10
);
SELECT * FROM TICKET;

-- Table 9
CREATE TABLE TAXI
(TID INT,
TNUM VARCHAR(12),
TRC INT,
TMODEL VARCHAR(30),
CAPACITY INT,
TPRICE FLOAT,
PICK_ADD VARCHAR(50),
DROP_ADD VARCHAR(60),
CNAME VARCHAR(15) NOT NULL,
PID INT NOT NULL,
PRIMARY KEY(TID),
FOREIGN KEY(CNAME) REFERENCES CITY(CNAME) ON DELETE CASCADE,
FOREIGN KEY(PID) REFERENCES PASSENGER(PID) ON DELETE CASCADE);

 INSERT INTO TAXI VALUES(
    1,
    'DL04AC6910',
    9252376545,
    'SWIFT DZIRE',
    4,
    700,
    'INDIRA GANDHI INTERNATIONAL AIRPORT ',
    '5B Cross Road Tilak Nagar',
    'DELHI',
    1
);

 INSERT INTO TAXI VALUES(
    2,
    'TS15DC1110',
    92527654345,
    'TOYOTA ETIOS',
    4,
    800,
    'RAJIV GANDHI INTERNATIONAL AIRPORT',
    '26/3 Tumkur Road ',
    'HYDERABAD',
    2
);
 INSERT INTO TAXI VALUES(
    3,
    'MH01AC6910',
    9215423545,
    'TATA ALTROZ',
    4,
    600,
    'CHHATRAPATI SHIVAJI MAHARAJ INTERNATIONAL AIRPORT ',
    '7B Bayer Roundabout Thane',
    'MUMBAI',
    3
);
 INSERT INTO TAXI VALUES(
    4,
    'PB03AT6234',
    9252309876,
    'TOYOTA INNOVA',
    4,
    1000,
    'CHANDIGARH INTERNATONAL AIRPORT',
    '105 Bank Colony Sector 37',
    'CHANDIGARH',
    4
);
 INSERT INTO TAXI VALUES(
    5,
    'KL07BC7710',
    9230006545,
    'SWIFT DZIRE',
    4,
    700,
    'COCHIN INTERNATIONAL AIRPORT ',
    'no. 7 Link Road ',
    'COCHIN',
    5
);
 INSERT INTO TAXI VALUES(
    6,
    'GJ09EC3410',
    9252376545,
    'XCENT',
    4,
    600,
    'SURAT INTERNATONAL AIRPORT',
    '403/8 Nagri Niwara Parishad ',
    'SURAT',
    6
);
 INSERT INTO TAXI VALUES(
    7,
    'RJ12AC2107',
    9252187635,
    'SWIFT DZIRE',
    4,
    700,
    'JAIPUR INTERNATIONAL AIRPORT',
    'A1/1, Nathu Colony Chowk',
    'JAIPUR',
    7
);
 INSERT INTO TAXI VALUES(
    8,
    'TN12AC0310',
    9252376545,
    'HONDA AMAZE',
    4,
    750,
    'CHENNAI INTERNATIONAL AIRPORT',
    '8 Garden Estate Road',
    'CHENNAI',
    8
);
 INSERT INTO TAXI VALUES(
    9,
    'PB02AC7410',
    8976476545,
    'HONDA CITY',
    4,
    800,
    'CHANDIGARH INTERNATIONAL AIRPORT',
    '18th Avenue SECTOR 43',
    'CHANDIGARH',
    9
);
 INSERT INTO TAXI VALUES(
    10,
    'AP02AC7412',
    9243309812,
    'SWIFT DZIRE',
    4,
    700,
    'VISAKHAPATNAM INTERNATIONAL AIRPORT ',
    '31 Sham Nath Marg Civil Lines ',
    'VISAKHAPATNAM',
    10
);
 INSERT INTO TAXI VALUES(
    11,
    'PB02AC6910',
    9252874523,
    'XCENT',
    4,
    700,
    'CHANDIGARH INTERNATIONAL AIRPORT',
    '106 Warden Road SECTOR 58',
    'CHANDIGARH',
    11
);
 INSERT INTO TAXI VALUES(
    12,
    'RJ02AC0798',
    9251437645,
    'HONDA AMAZE',
    4,
    850,
    'JAIPUR INTERNATIONAL AIRPORT',
    '151 4th Main Road Near Sargun Hospital',
    'JAIPUR',
    12
);
 INSERT INTO TAXI VALUES(
    13,
    'DL10AC2435',
    9209527386,
    'SWIFT DZIRE',
    4,
    800,
    'INDIRA GANDHI INTERNATIONAL AIRPORT ',
    '99B Shastri Nagar',
    'DELHI',
    13
);
 INSERT INTO TAXI VALUES(
    14,
    'TN10AC5276',
    9798079545,
    'SWIFT DZIRE',
    4,
    600,
    'CHENNAI INTERNATIONAL AIRPORT',
    'No.5 Cline Road',
    'CHENNAI',
    14
);
 INSERT INTO TAXI VALUES(
    15,
    'DL05OP0143',
    7982576545,
    'SWIFT DZIRE',
    4,
    900,
    'INDIRA GANDHI INTERNATIONAL AIRPORT ',
    'Lotus Boulevard Sector 100 Noida',
    'DELHI',
    15
);
 INSERT INTO TAXI VALUES(
    16,
    'GJ06AC4301',
    9228376502,
    'HONDA AMAZE',
    4,
    700,
    'SURAT INTRNATIONAL AIRPORT',
    '3 Ghodbunder Service Road',
    'SURAT',
    16
);
SELECT * FROM TAXI;


-- Table 10

 CREATE TABLE STOPS(
    STOP_ID NUMBER(6) PRIMARY KEY,
    FID VARCHAR(30) NOT NULL,
    TOTAL_LAYOVER_TIME VARCHAR(30),
    STOP1 VARCHAR(30) DEFAULT NULL,
    LAYOVER_TIME1 VARCHAR(10) DEFAULT NULL,
    STOP2 VARCHAR(30) DEFAULT NULL,
    LAYOVER_TIME2 VARCHAR(10) DEFAULT NULL,
    FOREIGN KEY(FID) REFERENCES FLIGHT(FID) ON DELETE CASCADE
);

INSERT INTO STOPS VALUES(
    100,
    1,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    101,
    2,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    102,
    3,
    '90 MIN',
    'JAIPUR',
    '90 MIN',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    103,
    4,
    '120 MIN',
    'HYDERABAD',
    '120 MIN',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    104,
    5,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    105,
    6,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    106,
    7,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    107,
    8,
    '120 MIN',
    'HYDERABAD',
    '120 MIN',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    108,
    9,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    109,
    10,
    '90 MIN ',
    'HYDERABAD',
    '90 MIN ',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    110,
    11,
    '180 MIN',
    'SURAT',
    '90 MIN',
    'JAIPUR',
    '90 MIN'
);
INSERT INTO STOPS VALUES(
    111,
    12,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    112,
    13,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    113,
    14,
    '',
    'VISAKHATPATNAM',
    '90 MIN',
    'JAIPUR',
    '120 MIN '
);
INSERT INTO STOPS VALUES(
    114,
    15,
    '',
    '',
    '',
    '',
    ''
);
INSERT INTO STOPS VALUES(
    115,
    16,
    '',
    '',
    '',
    '',
    ''
);


-- Table 11

CREATE TABLE CANCELLATION_TICKET(
DATE_OF_CANCELLATION DATE NOT NULL PRIMARY KEY,
SURCHARGE INT,
PID INT NOT NULL,
FOREIGN KEY(PID) REFERENCES PASSENGER(PID) ON DELETE CASCADE);

INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('30-MAR-2022', 'DD-MON-YYYY'), 
    2000,
    1
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('31-MAR-2022', 'DD-MON-YYYY'),
    1500,
    2
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('01-APR-2022', 'DD-MON-YYYY'),
    2500,
    3
); 
INSERT INTO CANCELLATION_TICKET VALUES(
	TO_DATE('02-APR-2022', 'DD-MON-YYYY'),
    2200,
    4
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('03-APR-2022', 'DD-MON-YYYY'),
    1600,
    5
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('04-APR-2022', 'DD-MON-YYYY'),
    1700,
    6
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('05-APR-2022', 'DD-MON-YYYY'),
    2300,
    7
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('06-APR-2022', 'DD-MON-YYYY'),
    2000,
    8
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('07-APR-2022', 'DD-MON-YYYY'),
    2600,
    9
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('08-APR-2022', 'DD-MON-YYYY'),
    1900,
    10
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('09-APR-2022', 'DD-MON-YYYY'),
    2100,
    11
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('10-APR-2022', 'DD-MON-YYYY'),
    2150,
    12
); 
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('11-APR-2022', 'DD-MON-YYYY'),
    2300,
    13
);
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('12-APR-2022', 'DD-MON-YYYY'),
    2300,
    13
);
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('13-APR-2022', 'DD-MON-YYYY'),
    2000,
    13
);
INSERT INTO CANCELLATION_TICKET VALUES(
    TO_DATE('14-APR-2022', 'DD-MON-YYYY'),
    2500,
    13
); 

SELECT * FROM CANCELLATION_TICKET;
