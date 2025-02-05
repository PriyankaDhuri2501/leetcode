import pandas as pd

def createDataframe(student_data1):
    df = pd.DataFrame(student_data1, columns=['student_id', 'age'])
    return df


student_data1 = [
    [1, 15],
    [2, 11],
    [3, 11],
    [4, 20]
]

df = createDataframe(student_data1)
print(df)
