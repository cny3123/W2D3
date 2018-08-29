require 'deck'

RSpec.describe Deck do
  describe '#initialize' do
    subject(:deck) { Deck.new }
    let(:card) { double('card') }
    
    it 'calls Card.new' do
      expect(card).to receive(:new)
      Deck.new
    end
    
    it 'creates a deck containing cards' do
      expect(deck.cards).to include(an_instance_of(Card))
    end
    
    
    it 'cards instance variable is an array' do
      expect(deck.cards).to be_an_instance_of(Array)
    end
    
  end
  
end