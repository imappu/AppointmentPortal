# AppointmentPortal
Step 1> First Configure IDE Eclipse oxygen and oracle 11 g with admin as table and username and password as two columns as this app does not have admin registartion facility. 
step 2>configure IDE with apachec tomcat 8.5
step 3>Add ojdbc6 jar as it is not included in pom file
step 4) Run on server
Strp 5) From home page hyperlink go click on registration 
step 6) Click on admin Login and login with the credetials which are stored in admin table.
step 7) and add doctor deatils for diffrent departments
step 8)Now click on patientlogin page and login with patient credentials.
step 9) click on book the appointment follow below steps
          a)select department
          b)select date,time ,doctor and it will give you pop abaout availabilty.
          c)If no seats are available then try with diffrent doctors or slots or dates
          d)Note that if doctors are added from admin panel only then only you can book the appointments otherwise you cannot book the appointments.
          e)And then from patient home page click on view appointments
  Step 10)As session management is done with one browser only one instance of application can be run .
          So if you are trying for diffrent patients you should use diffrent browsers then you should 
