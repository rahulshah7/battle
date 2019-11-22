# frozen_string_literal: true

class Game
  attr_reader :player1, :player2, :current_player, :other_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @other_player = player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_player
    @current_player, @other_player = @other_player, @current_player
  end

  def loser
    losing_player = [@player1, @player2].select do |player|
      player.hp.zero?
    end.first

    losing_player ? losing_player.name : nil
  end
end
