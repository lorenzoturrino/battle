require 'player'
require 'spec_helper'


describe Player do

subject(:player) {described_class.new(:name)}


  it ' should display the name of the player' do
    expect(player.name).to eq :name
  end
end