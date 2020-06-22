# frozen_string_literal: true

require 'thor'
require 'shinycolors'

module ShinyColors
  class CLI < Thor
    desc 'idol NAME', 'アイドルのプロフィールを表示する'
    def idol(name = nil)
      if name
        ShinyColors.send(name).display
      else
        ShinyColors::Idol.sample.display
      end
    end
  end
end
