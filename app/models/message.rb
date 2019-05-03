class Message < ApplicationRecord
  validates :body, :user_id, :channel_id, presence: true 
  belongs_to :user
  belongs_to :channel

  after_create :notify_pusher, on: :create

  def notify_pusher
    Pusher.trigger('message', 'new', self.as_json)
  end

end
