import psycopg2

# Define connection parameters
hostname = "localhost"
port = "5432"
database = "online_bookstore"
username = "your_username"
password = "your_password"

# Connect to database
conn = psycopg2.connect(
    host=hostname,
    port=port,
    database=database,
    user=username,
    password=password
)

# Open cursor
cur = conn.cursor()

# Execute SQL scripts to create tables and constraints
with open('./sql/create_tables.sql', 'r') as f:
    cur.execute(f.read())
    
with open('./sql/create_constraints.sql', 'r') as f:
    cur.execute(f.read())

# Insert initial test data
with open('./sql/insert_test_data.sql', 'r') as f:
    cur.execute(f.read())

# Generate and insert additional test data
with open('./sql/generate_test_data.sql', 'r') as f:
    cur.execute(f.read())

# Commit changes and close cursor and connection
conn.commit()
cur.close()
conn.close()
