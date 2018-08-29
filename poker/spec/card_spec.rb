require 'card'

RSpec.describe Card do
  describe "#initialize" do
    subject(:card) { Card.new('hearts', '4') }
    
    it "sets suit of card" do
      expect(card.suit).to eq('hearts')
    end
    
    it "sets face value of card" do
      expect(card.value).to eq('4')
    end
  end 
end