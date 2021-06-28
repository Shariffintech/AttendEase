class Attendance < ApplicationRecord
    has_many :lectures, inverse_of: :attendances
    accepts_nested_attributes_for :lectures
end
