import mysql.connector

# Database Connection
conn = mysql.connector.connect(
    host="localhost",
    user="shiv",
    password="1234",
    database="sales_project"
)

# Cursor Creation
cursor = conn.cursor()

# Fetch All Records
query = "SELECT * FROM sales"
cursor.execute(query)

records = cursor.fetchall()

print("COMPLETE SALES DATA\n")

for row in records:
    print(row)

# Total Revenue Calculation
total_revenue = 0

print("\nTOTAL AMOUNT FOR EACH ORDER\n")

for row in records:
    quantity = row[4]
    price = row[5]

    total_amount = quantity * price

    total_revenue += total_amount

    print("Customer:", row[1])
    print("Product:", row[2])
    print("Total Amount:", total_amount)
    print()

print("TOTAL REVENUE:", total_revenue)

# Electronics Products
print("\nELECTRONICS PRODUCTS\n")

for row in records:
    if row[3] == "Electronics":
        print(row)

# Highest Price Product
highest_price = 0
product_name = ""

for row in records:
    if row[5] > highest_price:
        highest_price = row[5]
        product_name = row[2]

print("\nMOST EXPENSIVE PRODUCT")
print("Product Name:", product_name)
print("Price:", highest_price)

# City Wise Revenue
city_revenue = {}

for row in records:
    city = row[6]

    quantity = row[4]
    price = row[5]

    total = quantity * price

    if city in city_revenue:
        city_revenue[city] += total
    else:
        city_revenue[city] = total

print("\nCITY WISE REVENUE\n")

for city, revenue in city_revenue.items():
    print(city, ":", revenue)

# Close Connection
cursor.close()
conn.close()