class Lecture < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: :lectures_id
    belongs_to :user
    validates :name, presence: true
    scope :teachers_lectures, -> (user) { where(user_id: user.id) }

    # build a scope route showing the lecture that has the most statuses 
    # set to present
    scope :most_popular_lectures, -> do
        joins(:attendances)
        .where(attendances: { status: 'Present'})
        .group("lectures.id")
        .order('count(attendances.status) DESC')
        .limit(1)
    end

     


    # scope :most_popular_lecture, -> (lecture){
    #      joins(:attendances)
    #     .where(attendances: { status: 'present', "lecture.id = ?" => lecture.id })
    #     .order('count_all DESC') 
    #     .group(:lecture_id)
    #     .count
    # }

    # scope :most_popular_lecture, ->(){
    #     Lecture.joins(:attendances)
    #     .where(attendances: { status: 'present'})
    #     .order('count_all DESC') 
    #     .group(:lecture_id)
    #     .count
    # }
    
    
    #  scope :most_popular_lecture, -> (lecture) { 
    #     joins(:attendances)
    #     .group(:lectures_id)
    #     .maximum(where(attendances.status('present')))
    #     .count
    #   }   
    
    

    accepts_nested_attributes_for :attendances
end


