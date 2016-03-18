require 'game'

describe Game do
  let(:player2) {double(:player2)}
  let(:player1) {double(:player1, attacked: nil)}
  subject(:game) {described_class.new(player1, player2)}

  it {is_expected.to respond_to(:attack).with(2).arguments}

  describe ' #attack' do
    it ' should call on the player #attacked' do
      expect(player1).to receive(:attacked)
      game.attack(player1)
    end

    it ' should call the fixed_attack function if passed fixed' do
      expect(game).to receive(:fixed_attack)
      game.attack(player1, :fixed)
    end

    it ' should call the normal_attack function by default' do
      expect(game).to receive(:random_attack)
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

  describe '#game_over' do
    it "should return true if player is dead" do
      allow(player1).to receive(:dead?).and_return(true)
      allow(player2).to receive(:dead?).and_return(false)
      expect(game).to be_game_over
    end
  end

  describe '#winner' do
    it "should return the player who is not dead" do
      allow(player1).to receive(:dead?).and_return(false)
      allow(player2).to receive(:dead?).and_return(true)
      expect(game.winner).to eq player1
    end
  end

  describe '#save & #load' do
    it 'stores an instance of the class in the class instance variable' do
      Game.save(game)
      expect(Game.load).to eq game
    end
  end

end
