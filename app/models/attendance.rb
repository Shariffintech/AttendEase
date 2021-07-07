class Attendance < ApplicationRecord
    belongs_to :lecture, foreign_key: :lectures_id
    belongs_to :student
    validates :lecture, presence: true
end
