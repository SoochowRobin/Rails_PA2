# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

course_file = File.read('app/assets/jsonfile/course.json')
course_data = JSON.parse(course_file)
c_columns = [:name, :code, :segment, :segment_id, :description]
c_values = []

course_data.each do |row|
	# puts [row['name'], row['code'], row['subjects'][0]['segment'], row['subjects'][0]['id'], row['description'] ]
	c_values.push([row['name'], row['code'], row['subjects'][0]['segment'], row['subjects'][0]['id'], row['description']])

end
# # use import method to import data
Course.import c_columns, c_values

instructor_file = File.read('app/assets/jsonfile/instructor.json')
instructor_data = JSON.parse(instructor_file)
i_columns = [:instructorId, :firstName, :middleName, :lastName, :email]
i_values = []

instructor_data.each do |row|
	i_values.push([row['id'], row['first'], row['middle'], row['last'], row['email']])
end
Instructor.import i_columns, i_values 


subject_file = File.read('app/assets/jsonfile/subject.json')
subject_data = JSON.parse(subject_file)
s_columns = [:subjectId, :subjectName, :segmentId, :segmentName]
s_values = []
subject_data.each do |row|
	row['segments'].each do |s_row|
		s_values.push([row['id'], row['name'], s_row['id'], s_row['name']])
	end
end 
# import data 
Subject.import s_columns, s_values 
