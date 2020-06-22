# frozen_string_literal: true

require 'thor'
require 'shinycolors'

module ShinyColors
  class CLI < Thor
    desc 'idol [NAME]', 'アイドルのプロフィールを表示する'
    def idol(name = nil)
      if name
        ShinyColors::Idol.send(name).display
      else
        ShinyColors::Idol.sample.display
      end
    end

    desc 'unit [NAME]', 'ユニットのプロフィールを表示する'
    def unit(name = nil)
      if name
        ShinyColors.send(name).display
      else
        ShinyColors::Unit.sample.display
      end
    end

    desc 'version', 'バージョンを表示する'
    def version
      puts "shinycolors version #{ShinyColors::VERSION}"
    end
  end
end
