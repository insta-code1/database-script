SELECT 	emp_no,
		min(salary) as Minimum,
        max(salary) as TheBigBucks,
        avg(salary) as Average,
        count(salary) as 'How Many Pay Raises',
        max(salary) - min(salary) as 'Pay Increase Since Hired'
from salaries
group by emp_no