import pandas as pd

def createBonusColumn(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = employees['salary']*2
    return employees

data = {
    'name' : ['Piper','Grace','Georgia','Willow','Finn','Thomas'],
    'salary' : [4548,28150,1103,6593,74576,24433]
}

employee_df = pd.DataFrame(data)

result = createBonusColumn(employee_df)

print(result)