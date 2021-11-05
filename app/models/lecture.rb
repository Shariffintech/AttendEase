class Lecture < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: :lectures_id
    validates :name, presence: true
    scope :teachers_lectures, -> (user) { where{user.id: current_user.id} }


    accepts_nested_attributes_for :attendances
end


