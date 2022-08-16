create table public.fraudes(
Monthh text,	
WeekOfMonth int,
DayOfWeek	text,
Make	text,
AccidentArea    text,	
DayOfWeekClaimed	text,
MonthClaimed	text,
WeekOfMonthClaimed  int,
Sex text,
MaritalStatus   text,	
Age	int,
Fault	text,
PolicyType	text,
VehicleCategory	text,
VehiclePrice	text,
FraudFound_P	int,
PolicyNumber	int,
RepNumber	int,
Deductible	int,
DriverRating	int,
Days_Policy_Accident	text,
Days_Policy_Claim	text,
PastNumberOfClaims	text,
AgeOfVehicle	text,
AgeOfPolicyHolder	text,
PoliceReportFiled	text,
WitnessPresent	text,
AgentType	text,
NumberOfSuppliments	   text,
AddressChange_Claim text,
NumberOfCars	text,
Yearr   int,
BasePolicy  text

)

COPY fraudes
FROM 'C:\Users\Holmes\Desktop\pruebar5\fraude.csv'
DELIMITER ',' 
CSV HEADER;

SELECT * FROM fraudes;


--- consultas

SELECT monthh, cast((SUM(fraudfound_p) * 100) as float) / COUNT(fraudfound_p) percentage_fraud_month FROM fraudes GROUP BY monthh ORDER BY monthh;

SELECT monthh, weekofmonth, cast((SUM(fraudfound_p) * 100) as float) / COUNT(fraudfound_p) percentage_fraud_month_week FROM fraudes GROUP BY monthh, weekofmonth ORDER BY monthh, weekofmonth;

SELECT monthh, weekofmonth, dayofweek, cast((SUM(fraudfound_p) * 100) as float) / COUNT(fraudfound_p) percentage_fraud_month_week_day FROM fraudes GROUP BY monthh, weekofmonth, dayofweek ORDER BY monthh, weekofmonth, dayofweek;
