
require 'rails_helper'

RSpec.describe Server, type: :model do
  describe "Associations" do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :channels}
  end
end
