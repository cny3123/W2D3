require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  let(:card) { double('card') }
  
  describe '#initialize' do
    
    it 'creates a deck containing cards' do
      expect(deck.cards).to include(an_instance_of(Card))
    end
    
    it 'cards instance variable is an array' do
      expect(deck.cards).to be_an_instance_of(Array)
    end
    
    it 'has 52 cards' do
      expect(deck.cards.length).to eq(52)
    end
    
    it 'has no duplicate cards' do
      expect(deck.cards.uniq).to eq(deck.cards)
    end
  end
  
  describe '#take' do
    
    it 'should remove a card from the deck' do
      deck.take
      expect(deck.cards.length).to eq(51)
    end
    
    it 'returns the card that was removed' do
      expect(deck.take).to be_an_instance_of(Card)
    end
  end
  
end