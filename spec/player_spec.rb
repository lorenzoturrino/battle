require 'player'
require 'spec_helper'


describe Player do

subject(:player) {described_class.new(:name)}

  describe "#name" do
    it ' should display the name of the player' do
      expect(player.name).to eq :name
    end
  end

  describe "#hp" do
    it "should display the hit points of the player" do
      expect(player.hp).to eq 60
    end
  end

  describe "#attacked" do
    it "should reduce the players HP" do
      player.attacked
      expect(player.hp).to be <60
    end
  end
end
