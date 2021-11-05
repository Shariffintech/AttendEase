class Lecture < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: :lectures_id
    belongs_to :user
    validates :name, presence: true
    scope :teachers_lectures, -> (user) { where(user_id: user.id) }
    accepts_nested_attributes_for :attendances
end


