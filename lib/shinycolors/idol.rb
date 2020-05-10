require 'yaml'
require 'active_support/core_ext/hash'

module ShinyColors
  class Idol
    class NotFoundError < StandardError; end

    def initialize(name:, cv:, age:, birthplace:, birthday:)
      @name = name
      @cv = cv
      @age = age
      @birthplace = birthplace
      @birthday = birthday
    end

    attr_reader :name, :cv, :age, :birthplace, :birthday

    class << self
      def all
        YAML.load_file('./data/idol.yml').each_with_object({}) do |(_, values), result|
          result.merge!(values['idols'])
        end.deep_symbolize_keys!
      end

      def names
        all.keys
      end

      def find(name)
        h = all[name]
        raise(IdolNotFoundError) if h.nil?
        Idol.new(**h)
      end

      def display(name)
        idol = find(name)
        puts <<~PRETTY
          名前:   #{idol.name}
          cv:     #{idol.cv}
          年齢:   #{idol.age}
          出身地: #{idol.birthplace}
          誕生日: #{idol.birthday}
        PRETTY
      end
    end
  end
end
