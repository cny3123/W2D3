class Deck
  attr_accessor :cards
  
  SUITS = ['diamonds', 'clubs', 'hearts', 'spades']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  
  def initialize
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(suit, value)
      end 
    end 
  end
end