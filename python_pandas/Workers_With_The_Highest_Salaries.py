# Import your libraries
import pandas as pd

worker_and_title_df = pd.merge(
    worker,
    title,
    left_on = 'worker_id',
    right_on = 'worker_ref_id',
    how = 'inner'
)

max_salary_df = worker_and_title_df['salary'].max()

all_row_max_salary = worker_and_title_df[
    worker_and_title_df['salary'] == max_salary_df
]

result = all_row_max_salary[['worker_title']]