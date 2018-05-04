# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create(first_name: 'David', last_name: 'Patlut', age: 90, salary: 5000, highest_education: 'College', cohort_id: 1)
Instructor.create(first_name: 'Orlando', last_name: 'Caraballo', age: 70, salary: 6000, highest_education: 'Masters', cohort_id: 2)
Instructor.create(first_name: 'Bill', last_name: 'Keller', age: 50, salary: 3000, highest_education: 'PhD', cohort_id: 3)


Student.create(first_name: 'Janelle', last_name: 'Ballack', age: 100, highest_education: 'HS', cohort_id: 1)
Student.create(first_name: 'Danyale', last_name: 'Walker', age: 70, highest_education: 'HS', cohort_id: 2)
Student.create(first_name: 'Mashal', last_name: 'Azhar', age: 105, highest_education: 'HS', cohort_id: 3)
Student.create(first_name: 'Caroline', last_name: 'Russell', age: 77, highest_education: 'HS', cohort_id: 1)
Student.create(first_name: 'Kay', last_name: 'Mok', age: 99, highest_education: 'HS', cohort_id: 2)
Student.create(first_name: 'Ronen', last_name: 'Goren', age: 109, highest_education: 'HS', cohort_id: 3)


Course.create(name: 'NYC WDF', total_in_class_hours: 560)
Course.create(name: 'Software Engineering Intensive', total_in_class_hours: 560)
Course.create(name: 'UX Design Intensive', total_in_class_hours: 560)


Cohort.create(name: 'NYC WDF', start_date: 'Feb 26, 2018', end_date: 'Jun 7, 2018', instructor_name: 'D.Patlut', course_id: 1)
Cohort.create(name: 'Software Engineering Intensive', start_date: 'Mar 12, 2018', end_date: 'Jun 21, 2018', instructor_name: 'O.Caraballo', course_id: 3)
Cohort.create(name: 'UX Design Intensive Intensive', start_date: 'Apr 16, 2018', end_date: 'Jul 6, 2018', instructor_name: 'B.Keller', course_id: 2)


CohortStudent.create(cohort_id: 1, student_id: 6)
CohortStudent.create(cohort_id: 2, student_id: 4)
CohortStudent.create(cohort_id: 3, student_id: 1)
CohortStudent.create(cohort_id: 1, student_id: 5)
CohortStudent.create(cohort_id: 2, student_id: 2)
CohortStudent.create(cohort_id: 3, student_id: 3)

CohortInstructor.create(cohort_id: 1, instructor_id: 1)
CohortInstructor.create(cohort_id: 2, instructor_id: 2)
CohortInstructor.create(cohort_id: 3, instructor_id: 3)