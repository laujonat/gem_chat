# frozen_string_literal: true

class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable, :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist, 
        authentication_keys: [:screenname]
  validates :screenname, :email, presence: true, uniqueness: true

  has_many :servers

  def login
    screenname || email
  end

  def self.find_by_screen_name(screenname)
    User.find_by(screenname: screenname)
  end

  def self.find_by_email(email)
    User.find_by(email: email)
  end
end
