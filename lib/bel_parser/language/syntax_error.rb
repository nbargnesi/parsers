require_relative 'syntax_result'

module BELParser
  module Language
    module Syntax
      class SyntaxError < SyntaxResult
        def initialize(expression_node, specification)
          super(expression_node, specification)
        end

        # @abstract Subclass and override {#msg} to provide the message.
        def msg
          raise NotImplementedError, "#{__method__} is not implemented."
        end

        def to_s
          "Error: #{msg}"
        end
      end
    end
  end
end