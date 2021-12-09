from department import Department
from flask import Flask, render_template, redirect, request

app = Flask('__name__')

#routes go here
@app.route('/')
def index():
    all_departments = Department.get_all_departments()
    return render_template('index.html', departments=all_departments)

@app.route('/departments/create', methods=['POST'])
def create_department():
    new_department_data = {
        'name': request.form['name'],
        'location': request.form['location']
    }
    Department.create_department(new_department_data)
    return redirect('/')


if __name__ == '__main__':
    app.run(debug = True)