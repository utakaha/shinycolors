# frozen_string_literal: true

RSpec.describe ShinyColors do
  describe '樋口円香' do
    let(:madoka_attrs) do
      {
        name: '樋口 円香',
        cv: '土屋 李央',
        age: 17,
        birthplace: '東京都',
        birthday: '10/27',
        nickname_key: %w[madoka higuchi],
        nickname_kana: %w[樋口 円香 円香先輩],
      }
    end

    it 'full name' do
      expect(described_class.madoka_higuchi).to have_attributes(madoka_attrs)
    end

    it 'nickname' do
      expect(described_class.madoka).to have_attributes(madoka_attrs)
      expect(described_class.higuchi).to have_attributes(madoka_attrs)
    end
  end
end
