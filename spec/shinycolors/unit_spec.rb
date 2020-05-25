# frozen_string_literal: true

RSpec.describe ShinyColors::Unit do
  describe 'class method' do
    it '#all' do
      expect(described_class.all.count).to eq 6
    end
  end
end
