class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :screenname, :session_token, :email, presence: true, uniqueness: true

  has_many :servers 

  def self.find_by_screen_name(screenname)
    User.find_by(screenname: screenname)
  end 

  def self.find_by_email(email)
    User.find_by(email: email)
  end
end
