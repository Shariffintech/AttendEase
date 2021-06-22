class User < ApplicationRecord
  has_secure_password
  # has_many :students, through: :teachers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

 
  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.email = auth.info.email
      user.encrypted_password = SecureRandom.hex
    end
    
  end
end
