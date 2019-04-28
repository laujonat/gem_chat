# frozen_string_literal: true

class Server < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :channels, dependent: :destroy 
end
