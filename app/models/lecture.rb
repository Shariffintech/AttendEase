class Lecture < ApplicationRecord
    belongs_to :attendances, :inverse_of => :lectur
    validates_presence_of :attendances
end


# user -> teacher -> student[student_id]
# lecture[lecture_id] -> attendance[student_id, lecture_id]