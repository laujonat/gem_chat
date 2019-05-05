# frozen_string_literal: true

class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :token_authenticatable, authentication_keys: [:screenname]
  devise :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  validates :screenname, :email, presence: true, uniqueness: true
  has_many :servers
  
  has_secure_password validations: false
  # before_save :ensure_authentication_token

  def self.find_by_screen_name(screenname)
    User.find_by(screenname: screenname)
  end

  def self.find_by_email(email)
    User.find_by(email: email)
  end

  def generate_jwt
    JWT.encode({ id: id, exp: 1.days.from_now.to_i }, Rails.application.secrets.secret_key_base)
  end
end
