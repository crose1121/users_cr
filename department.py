from mysqlconnection import connectToMySQL

class Department:

    def __init__(self,data):
        self.id = data['id']
        self.name = data['name']
        self.location = data['location']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    @classmethod
    def get_all_departments(cls):
        query = "SELECT * FROM departments;"

        results = connectToMySQL('departments_and_employees').query_db(query)

        departments = []
        for row in results:
            departments.append(Department(row)) #can also use 'cls(item)' instead of 'Department(item)' to call the initialization method for the Department class0

        return departments

    @classmethod
    def create_department(cls, data):
        query = "INSERT INTO departments (name, location) VALUES (%(name)s,%(location)s)"

        result = connectToMySQL('departments_and_employees').query_db(query, data)
        return result