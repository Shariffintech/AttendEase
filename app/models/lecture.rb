class Lecture < ApplicationRecord
    has_many :attendances, -> { order(created_at: :desc) }
end
