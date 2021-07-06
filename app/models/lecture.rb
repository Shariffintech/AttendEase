class Lecture < ApplicationRecord
    has_many :attendances
    validates :name, presence: true

    accepts_nested_attributes_for :attendances
end


