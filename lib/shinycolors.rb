require 'shinycolors/version'
require 'shinycolors/idol'

module ShinyColors
  class << self
    Idol.names.each do |name|
      define_method(name) do
        Idol.find(name)
      end
    end
  end
end
