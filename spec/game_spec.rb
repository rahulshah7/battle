# frozen_string_literal: true

require 'game'

describe Game do
  let(:player1) { Player.new('Rahul') }
  let(:player2) { Player.new('Gabby') }
  subject(:game) { Game.new(player1, player2) }
  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'causes a player to receive damage' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
