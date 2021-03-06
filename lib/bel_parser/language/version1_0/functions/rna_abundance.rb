require_relative '../../version1_0'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantics'

module BELParser
  module Language
    module Version1_0
      module Functions
        # RNAAbundance: Denotes the abundance of a gene
        class RNAAbundance
          extend Function

          SHORT       = :r
          LONG        = :rnaAbundance
          RETURN_TYPE = BELParser::Language::Version1_0::ReturnTypes::GeneAbundance
          R_ENC       = Version1_0::ValueEncodings::RNAAbundance
          DESCRIPTION = 'Denotes the abundance of a gene'.freeze

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
            # RNAAbundanceWithFusionSignature
            class RNAAbundanceWithFusionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(RNAAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                          has_encoding,
                          encoding_of(R_ENC)))),
                  argument(
                    term(
                      function(
                        identifier(
                          return_type_of(BELParser::Language::Version1_0::ReturnTypes::Fusion))))))
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(E:rnaAbundance,F:fusion)geneAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end

            # RNAAbundanceSignature
            class RNAAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                  function(
                    identifier(
                      function_of(RNAAbundance))),
                  argument(
                    parameter(
                      prefix(
                        has_namespace,
                        namespace_of(:*)),
                      value(
                        has_encoding,
                        encoding_of(R_ENC)))))
              end
              private_constant :AST

              STRING_FORM = 'rnaAbundance(E:rnaAbundance)geneAbundance'.freeze
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
