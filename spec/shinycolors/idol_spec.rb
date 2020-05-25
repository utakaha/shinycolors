# frozen_string_literal: true

RSpec.describe ShinyColors::Idol do
  describe 'class method' do
    it '#all' do
      expect(described_class.all.count).to eq 23
    end
  end

  describe 'instance method' do
    let(:asahi) { ShinyColors.asahi }

    it '#nickname' do
      expect(asahi.nickname).to eq ['あさひ']
    end
  end
end
