# frozen_string_literal: true

RSpec.describe ShinyColors::Idol do
  let(:asahi) { ShinyColors.asahi }

  it '#nickname' do
    expect(asahi.nickname).to eq ['あさひ']
  end
end
