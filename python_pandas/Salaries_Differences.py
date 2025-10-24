# Import your libraries
import pandas as pd

df_merged = pd.merge(
    db_employee,
    db_dept,
    left_on = 'department_id',
    right_on = 'id',
    how='inner'
)

df_engineering = df_merged[df_merged['department'].str.lower() == 'engineering']
engineering_max_salary = df_engineering['salary'].max()
# print(f"this is the max salary engineer: ${engineering_max_salary}");

df_marketing = df_merged[df_merged['department'].str.lower() == 'marketing']
marketing_max_salary = df_marketing['salary'].max()
# print(f"this is the max salary marketing: ${marketing_max_salary}");

difference_salary = abs(engineering_max_salary - marketing_max_salary)