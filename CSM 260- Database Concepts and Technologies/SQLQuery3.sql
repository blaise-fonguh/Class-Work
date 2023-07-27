Select MIN(A.Salry) as minimum_sal_for_A, MAX(A.Salry) as maximum_sal_for_A, AVG(A.Salry) as average_salary_for_A,MIN(B.Salry) as minimum_sal_for_B, MAX(B.Salry) as maximum_sal_for_B, AVG(B.Salry) as average_salary_for_B
From EMPLOYEE as A, EMPLOYEE as B
where DATEDIFF(YY,A.Bdate,GETDATE()) < (
Select AVG(DATEDIFF(YY,Bdate,GETDATE())) as Average 
From EMPLOYEE
)

Select MIN(Salry) as minimum_salary, MAX(Salry) as maximum_salary, AVG(Salry) as average_salary
From EMPLOYEE
where DATEDIFF(YY,Bdate,GETDATE()) != (
Select AVG(DATEDIFF(YY,Bdate,GETDATE())) as Average 
From EMPLOYEE
)