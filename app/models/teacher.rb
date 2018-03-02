class Teacher < ApplicationRecord
	validates_presence_of :full_name
	validates_presence_of :course_name	
	validates_presence_of :grade_level
end