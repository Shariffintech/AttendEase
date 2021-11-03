class User < ApplicationRecord
  enum role: {teacher: 0, student: 1}
  has_many :teachers, foreign_key: :user_id
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  accepts_nested_attributes_for :teachers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

 
  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.email = auth.info.email
      user.password = user.password_confirmation = SecureRandom.hex
    end
    
  end
end
