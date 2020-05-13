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
        return @all unless @all.nil?

        @all = YAML.load_file('./data/idol.yml').deep_symbolize_keys!
      end

      def names
        all.keys
      end

      def find(name)
        h = all[name]
        raise(IdolNotFoundError) if h.nil?

        new(**h)
      end
    end
  end
end
