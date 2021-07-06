class Attendance < ApplicationRecord
    belongs_to :lectures
    validates :lectures, presence: true
end
