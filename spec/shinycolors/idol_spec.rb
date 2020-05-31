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

    it '#unit_name' do
      expect(asahi.unit_name).to eq 'Straylight'
    end

    it '#==' do
      expect(asahi == ShinyColors.asahi).to eq true
    end
  end
end
