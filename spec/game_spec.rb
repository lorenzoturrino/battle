require 'game'

describe Game do 
  let(:player2) {double(:player2)}
  let(:player1) {double(:player1)}
  subject(:game) {described_class.new(player1, player2)}
  
  describe ' #attack' do
    it' should call on the player #attacked' do
      expect(player1).to receive(:attacked)
      game.attack(player1)
    end
  end
end