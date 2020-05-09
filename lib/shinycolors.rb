require 'shinycolors/version'
require 'yaml'

module ShinyColors
  class Idol
    class << self
      def all
        YAML.load_file('./lib/data/idol.yml').values.inject { |all, unit| all.merge(unit) }
      end

      def names
        all.keys
      end

      def find(name)
        idol = all[name.to_s]
      end

      Idol.names.each do |name|
        define_method(name) do
          Idol.find(name)
        end
      end
    end
  end
end
