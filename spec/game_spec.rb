# frozen_string_literal: true

require 'game'

describe Game do
  describe '#attack' do
    subject(:game) { Game.new }
    let(:player1) { Player.new('Rahul') }
    let(:player2) { Player.new('Gabby') }
    it 'causes a player to receive damage' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
