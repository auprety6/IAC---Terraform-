import json
import pymysql
import os

# Get database connection info from environment variables
RDS_HOST = os.environ['RDS_HOST']
DB_USERNAME = os.environ['anuuprety']
DB_PASSWORD = os.environ['IsTheMostHandsome']
DB_NAME = os.environ['myDB']

# Create a connection to the RDS database
def get_db_connection():
    try:
        connection = pymysql.connect(
            host=RDS_HOST,
            user=DB_USERNAME,
            password=DB_PASSWORD,
            db=DB_NAME,
            cursorclass=pymysql.cursors.DictCursor
        )
        return connection
    except Exception as e:
        print(f"Error connecting to database: {e}")
        raise

def lambda_handler(event, context):
    try:
        # Establish DB connection
        connection = get_db_connection()

        # Create a cursor object using the connection
        with connection.cursor() as cursor:
            # Example query (you can change this to whatever you need)
            query = "SELECT * FROM users"  # Modify with your actual table and query
            cursor.execute(query)

            # Fetch results from query
            result = cursor.fetchall()

            # Return the results in the Lambda response
            response = {
                "statusCode": 200,
                "body": json.dumps(result)
            }

        # Close the connection
        connection.close()

        return response

    except Exception as e:
        print(f"Error: {e}")
        return {
            "statusCode": 500,
            "body": json.dumps({"error": str(e)})
        }
