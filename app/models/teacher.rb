class Teacher < ApplicationRecord
    has_many :students
    has_many :lectures, through: :attendances
end
