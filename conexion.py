import mysql.connector

config = {
    'host': 'mysql-db',  
    'user': 'root',
    'password': '1234',
    'database': 'mysql_docker',
    'port': 3306,
}

connection = mysql.connector.connect(**config)

try:
    cursor = connection.cursor()

    query = "SELECT * FROM nombre_tabla"
    cursor.execute(query)
    results = cursor.fetchall()

    for row in results:
        print(row)

finally:
    cursor.close()
    connection.close()
