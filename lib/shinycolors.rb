require 'shinycolors/version'
require 'shinycolors/idol'

module ShinyColors
  class << self
    Idol.names.each do |name|
      define_method(name) do
        Idol.display(name)
      end
    end
  end
end
