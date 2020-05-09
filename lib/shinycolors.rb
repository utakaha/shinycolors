require 'shinycolors/version'
require 'yaml'

module ShinyColors
  class Idol
    class NotFoundError < StandardError; end

    class << self
      def all
        YAML.load_file('./data/idol.yml').values.inject { |all, unit| all.merge(unit) }
      end

      def names
        all.keys
      end

      def find(name)
        idol = all[name.to_s]
        raise(IdolNotFoundError) if idol.nil?
      end

      Idol.names.each do |name|
        define_method(name) do
          Idol.find(name)
        end
      end
    end
  end
end
