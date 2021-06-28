class Student < ApplicationRecord
    has_many :lectures
    has_many :attendances, through: :lectures
    

    accepts_nested_attributes_for :lectures, :attendances

end
