require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "Associations" do 
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to validate_presence_of :channel_id }
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :channel }
  end 
end
