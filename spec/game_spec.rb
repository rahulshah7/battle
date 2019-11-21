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

  describe '#switch_player' do
    it 'swaps who the current player is' do
      expect { game.switch_player }
        .to change { game.current_player }
        .from(player1).to(player2)
    end

    it 'swaps who the other player is' do
      expect { game.switch_player }
        .to change { game.other_player }
        .from(player2).to(player1)
    end
  end
end
