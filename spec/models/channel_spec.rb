require 'rails_helper'

RSpec.describe Channel, type: :model do
  describe "Associations" do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to belong_to :server }
    it { is_expected.to have_many :messages}
  end
end
