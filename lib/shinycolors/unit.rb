# frozen_string_literal: true

require 'yaml'

module ShinyColors
  class Unit
    class NotFoundError < StandardError; end

    def initialize(name:, name_jp:, color:, idols:)
      @name = name
      @name_jp = name_jp
      @color = color
      @idols = idols
    end

    attr_reader :name, :name_jp, :color, :idols

    class << self
      def all
        data.map do |_key, values|
          new(**values)
        end
      end

      def names
        data.keys
      end

      def find(name)
        h = data[name]
        raise(NotFoundError) if h.nil?

        new(**h)
      end

      private

      def data
        return @data unless @data.nil?

        @data = YAML.load_file('./data/idol.yml').deep_symbolize_keys!
      end
    end
  end
end
