# frozen_string_literal: true

require 'yaml'

module ShinyColors
  class Unit
    class NotFoundError < StandardError; end

    def initialize(name:, name_jp:, color:, key_name:)
      @name = name
      @name_jp = name_jp
      @color = color
      @key_name = key_name
    end

    attr_reader :name, :name_jp, :color, :key_name

    class << self
      def all
        data.map do |key, values|
          values.delete(:idols)
          values[:key_name] = key
          new(**values)
        end
      end

      def names
        data.keys
      end

      def find(name)
        h = data[name]
        raise(NotFoundError) if h.nil?

        h.delete(:idols)
        h[:key_name] = name
        new(**h)
      end

      def sample
        all.sample
      end

      def data
        YAML.load_file('./data/idol.yml').deep_symbolize_keys!
      end
    end

    def idols
      Unit.data[key_name][:idols].keys.map { |key_name| Idol.find(key_name) }
    end

    def display
      puts <<~TEXT
                  名前: #{name}
        名前(カタカナ): #{name_jp}
        ユニットカラー: #{color}
      TEXT
    end
  end
end
