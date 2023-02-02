require 'rails_hleper'

RSpec.describe Dealership, type: :model do 
  describe 'instance methods' do 
    describe '#dealership?' do 
      it 'returns true when the name is dealership' do
        dealership = Dealership.create!(name: 'dealership', city: 'Boulder', rank: 1, service_shop: true)

        expect(dealership.dealership?).to be(true)
    end
  end
end