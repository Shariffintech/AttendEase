class Teacher < ApplicationRecord
    belongs_to :user
    has_many :students, foreign_key: 'student_id', class_name: 'Student'
    has_many :lectures, through: :attendances
end
