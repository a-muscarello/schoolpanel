# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create(first_name: 'Jack', last_name: 'Brown', age: 90, salary: 5000, highest_education: 'college', cohort_id: 1)
Instructor.create(first_name: 'Tom', last_name: 'Jones', age: 70, salary: 7000, highest_education: 'Masters', cohort_id: 2)
Instructor.create(first_name: 'Jane', last_name: 'Doe', age: 50, salary: 8000, highest_education: 'PhD', cohort_id: 3)

Student.create(first_name: 'Sam', last_name: 'Stone' age: 40, highest_education: 'HS', cohort_id: 1)
Student.create(first_name: 'Tim', last_name: 'Lake' age: 30, highest_education: 'HS', cohort_id: 2)
Student.create(first_name: 'Liz', last_name: 'Wong' age: 27, highest_education: 'HS', cohort_id: 3)

Course.create(name: 'NYC WDF', total_in_class_hours: 560)
Course.create(name: 'Software Engineering Intensive', total_in_class_hours: 560)
Course.create(name: 'UX Design Intensive', total_in_class_hours: 560)

Cohort.create(name: 'WDF-Cohort1', start_date: 'Feb 26, 2018' end_date: 'Jun 7, 2018' , instructor_name: 'D.Patlut', student_name: 'J.Ballack', course_id: 1)
Cohort.create(name: 'WDF-Cohort1', start_date: 'Feb 26, 2018' end_date: 'Jun 7, 2018' , instructor_name: 'D.Patlut', student_name: 'D.Walker', course_id: 1)
Cohort.create(name: 'WDF-Cohort1', start_date: 'Feb 26, 2018' end_date: 'Jun 7, 2018' , instructor_name: 'D.Patlut', student_name: 'M.Azhar', course_id: 1)
