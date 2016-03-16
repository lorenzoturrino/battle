require 'game'

describe Game do
  let(:player2) {double(:player2)}
  let(:player1) {double(:player1)}
  subject(:game) {described_class.new(player1, player2)}

  describe ' #attack' do
    it ' should call on the player #attacked' do
      expect(player1).to receive(:attacked)
      game.attack(player1)
    end
  end

  it {is_expected.to respond_to(:player1)}
  it {is_expected.to respond_to(:player2)}

  describe ' #turn' do
    it "should know  who's turn it is" do
      expect(game.turn).to eq player1
    end
  end

  describe ' #opposing_turn' do
    it " should know who is oppsing" do
      expect(game.opposing).to eq player2
    end
  end

  describe ' #change turn' do 
    it " should change turn" do
      expect(game.change_turn).to eq player2
    end
  end
end
