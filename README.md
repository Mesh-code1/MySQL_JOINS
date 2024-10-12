## Questions:
### 1. Simple Join
Write an SQL query to retrieve the ```provider_name``` and ```provider_specialty``` for each provider in the providers table. <br/>
 
### 2. Inner Join
Write an SQL query to find all patients who have visited a provider. Display the ```patient_id, first_name, last_name``` and ```provider_specialty```. <br/>
  
### 3. Left Join
Write an SQL query to list all patients and their visit details, including those who have not had any visits. Display ```patient_id, first_name, last_name``` and ```date_of_visit```. Include patients with no visits.<br/>

### 4. Join with Aggregation
Write an SQL query to find the number of visits each provider has had. Display the ```provider_name``` and the count of visits.<br/>

### 5. Complex Join With Conditions
Write an SQL query to find all patients who have had visits that required admission. Display the ```patient_id, first_name, last_name, admission_date``` and ```discharge_date```. Ensure you join all relevant tables to get this information.

<br/>

### Bonus Question (optional)
Write an SQL query to find the details of patients who have had visits, including their ```first_name, last_name, date_of_birth``` and the details of the visits they have had, including ```provider_name, visit_date, blood_pressure_systolic, blood_pressure_diastolic``` and ```visit_status```. Additionally, include information about the admissions and discharges related to these visits. Display patients who had admissions where the discharge disposition was 'Home', and order the results by the ```date_of_visit``` in descending order.

<br/><br/>