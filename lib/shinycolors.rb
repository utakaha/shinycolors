require 'shinycolors/version'
require 'shinycolors/idol'
require 'shinycolors/unit'

module ShinyColors
  class << self
    Idol.names.each do |name|
      define_method(name) do
        Idol.find(name)
      end
    end

    Idol.nicknames.each do |nickname, fullname|
      define_method(nickname) do
        Idol.find(fullname)
      end
    end

    Unit.names.each do |name|
      define_method(name) do
        Unit.find(name)
      end
    end
  end
end
