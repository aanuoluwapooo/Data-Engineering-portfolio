import pandas as pd

# Read the transaction data
df = pd.read_csv('bank_transactions.csv')

# Display the original data
print("Original Dataset")
print(df)

# Remove rows with missing customer IDs
df = df.dropna(subset=['Customer_ID'])

print("\nAfter removing missing customer IDs")
print(df)
# Remove negative transaction amounts
df = df[df['Amount'] > 0]

# Remove cancelled transactions
df = df[df['Status'] == 'Completed']

# Remove duplicate transactions
df = df.drop_duplicates()
