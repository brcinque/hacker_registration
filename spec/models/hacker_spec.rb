require 'rails_helper'

RSpec.describe Hacker, type: :model do
  describe 'validation tests' do
    let(:hacker) { create(:hacker) }

    it 'should be valid strait from the factory' do
      expect(hacker).to be_valid
    end

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:position) }
  end
end