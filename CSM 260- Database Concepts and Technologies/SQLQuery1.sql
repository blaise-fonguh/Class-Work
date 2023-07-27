Select E.Fname, E.LNAME, S.Fname,S.Lname
from EMPLOYEE AS E, EMPLOYEE AS S
where E.SUPER_SSN=S.SSN