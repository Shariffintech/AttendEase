class Lecture < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: :lectures_id
    validates :name, presence: true


    accepts_nested_attributes_for :attendances
end


