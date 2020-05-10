require 'yaml'

module ShinyColors
  class Idol
    class NotFoundError < StandardError; end

    class << self
      def all
        YAML.load_file('./data/idol.yml').each_with_object({}) do |(_, values), result|
          result.merge!(values['idols'])
        end
      end

      def names
        all.keys
      end

      def find(name)
        idol = all[name.to_s]
        idol.nil? ? raise(IdolNotFoundError) : idol
      end

      def display(name)
        idol = find(name)
        puts <<~PRETTY
          名前:   #{idol['name']}
          cv:     #{idol['cv']}
          年齢:   #{idol['age']}
          出身地: #{idol['birthplace']}
          誕生日: #{idol['birthday']}
        PRETTY
      end
    end
  end
end
