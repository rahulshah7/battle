# frozen_string_literal: true

require 'player'

describe Player do
  subject { described_class.new('Gabby') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(subject.name).to eq('Gabby')
    end
  end

  describe '#receive_damage' do
    it 'reduces a players hp' do
      expect(subject.hp).to eq(Player::DEFAULT_HP)
      expect { subject.receive_damage }.to change { subject.hp }.by(-10)
    end
  end
end
