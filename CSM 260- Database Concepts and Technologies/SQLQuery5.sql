Select (Fname+' '+Lname) as Namme,DATEDIFF(yy,Bdate,GETDATE()) as age
from EMPLOYEE ,DEPARTMENT
where (DATEDIFF(yy,Bdate,GETDATE()) > 60) and Dnumber=Dno