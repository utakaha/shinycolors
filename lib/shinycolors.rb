require 'shinycolors/version'
require 'yaml'

module ShinyColors
  class Idol
    class NotFoundError < StandardError; end

    class << self
      def all
        YAML.load_file('./data/idol.yml').each_with_object({}) do |(_, values), all|
          all.merge!(values['idols'])
        end
      end

      def names
        all.keys
      end

      def find(name)
        idol = all[name.to_s]
        idol.nil? ? raise(IdolNotFoundError) : idol
      end

      Idol.names.each do |name|
        define_method(name) do
          Idol.find(name)
        end
      end
    end
  end
end
