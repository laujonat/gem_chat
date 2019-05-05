# frozen_string_literal: true

class User < ApplicationRecord
  # include DeviseTokenAuth::Concerns::User
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :token_authenticatable, authentication_keys: [:username]
  devise :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  validates :username, presence: true, uniqueness: true
  has_many :servers
  
  before_save :ensure_authentication_token

  def self.find_by_screen_name(username)
    User.find_by(username: username)
  end

  # def self.find_by_email(email)
  #   User.find_by(email: email)
  # end

  def generate_jwt
    JWT.encode({ id: id, exp: 1.days.from_now.to_i }, Rails.application.secrets.secret_key_base)
  end
end
