class Attendance < ApplicationRecord
    belongs_to :lecture, foreign_key: :lectures_id
    belongs_to :student
    validates :lecture, presence: true
    
    scope :attendance_of_student, -> (student_id) { where(student_id: student_id) }
end
