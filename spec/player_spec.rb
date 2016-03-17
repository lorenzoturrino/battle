require 'player'
require 'spec_helper'


describe Player do

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
    it "should reduce the players HP" do
      player.attacked
      expect(player.hp).to eq Player::DEFAULT_HP - Player::ATTACK_POINTS
    end
  end

  describe "#dead?" do
    it "should return true if hp is zero" do
      player.attacked until player.hp <= 0
      expect(player).to be_dead
    end
  end
end
