require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version2
      module Functions
        # ToLocation: Denotes the to cellular location of the abundance.
        class ToLocation
          extend Function

          SHORT       = :toLoc
          LONG        = :toLocation
          RETURN_TYPE = BELParser::Language::Version2::ReturnTypes::ToLocation
          DESCRIPTION = 'Denotes the to cellular location of the abundance.'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.return_type
            RETURN_TYPE
          end

          def self.description
            DESCRIPTION
          end

          def self.signatures
            SIGNATURES
          end

          module Signatures
  
            class ToLocationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ToLocation))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:Location))))))              
              end
              private_constant :AST

              STRING_FORM = 'toLocation(E:location)toLocation'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
          end

          SIGNATURES = Signatures.constants.map do |const|
            Signatures.const_get(const)
          end.freeze
        end
      end
    end
  end
end