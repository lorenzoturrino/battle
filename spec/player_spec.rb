require 'player'
require 'spec_helper'


describe Player do

ATTACK_POINTS = 10
subject(:player) {described_class.new('bob')}

  describe "#name" do
    it 'should display and capitalize the name of the player' do
      expect(player.name).to eq 'Bob'
    end
  end

  describe "#hp" do
    it "should display the hit points of the player" do
      expect(player.hp).to eq Player::DEFAULT_HP
    end
  end

  describe "#attacked" do
    it "should reduce the players HP by the given amount" do
      expect{player.attacked ATTACK_POINTS}.to change{player.hp}.by -ATTACK_POINTS
    end
  end

  describe "#dead?" do
    it "should return true if hp is zero" do
      player.attacked Player::DEFAULT_HP
      expect(player).to be_dead
    end
  end
end
