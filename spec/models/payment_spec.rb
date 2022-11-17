require 'rails_helper'

RSpec.describe Payment, type: :model do
  # test validations.
  describe 'validations' do
    # it 'is valid with valid attributes' do
    #   expect(Entity.new(name: 'Rent', amount: 1000)).to be_valid
    # end
    it 'is not valid without a name' do
      expect(Payment.new(amount: 1000)).to_not be_valid
    end
    it 'is not valid without an amount' do
      expect(Payment.new(name: 'Rent')).to_not be_valid
    end
    # test associations.
    # describe 'associations' do
    #   it 'belongs to a user' do
    #     assc = described_class.reflect_on_association(:user)
    #     expect(assc.macro).to eq :belongs_to
    #   end
    # end
  end
end
