class Student < ApplicationRecord
    has_many :lectures, foreign_key: :student_id
    has_many :attendances, through: :lectures
    accepts_nested_attributes_for :lectures, :attendances #date picker, list of students 
end
