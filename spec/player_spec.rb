# frozen_string_literal: true

require 'player'

describe Player do
  subject { described_class.new('Gabby') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(subject.name).to eq('Gabby')
    end
  end

  describe '#attack' do
    subject(:player1) { described_class.new('Rahul') }
    subject(:player2) { described_class.new('Gabby') }
    it 'Reduces player 2 HP by 10' do
      expect(player2.hp).to eq(described_class::DEFAULT_HP)
      expect { player1.attack(player2) }.to change { player2.hp }.by(-10)
    end
  end
end
