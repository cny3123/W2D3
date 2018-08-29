require 'towers_of_hanoi'

RSpec.describe Game do
  subject(:g) { Game.new }
  
  
  describe '#move' do
    
    it 'moves a disc from one stack to another' do
      g.move(0, 1)
      expect(g.stack_0).to have(2).item
      expect(g.stack_1).to have(1).item
    end
  end
end