class Lecture < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: :lectures_id
    had_and_belongs_to_many :teachers, :students
    validates :name, presence: true
    scope :teachers_lectures, -> (user) { where{user.id: current_user.id} }
    accepts_nested_attributes_for :attendances
end


