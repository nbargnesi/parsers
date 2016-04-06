require_relative '../../version1'
require_relative '../../function'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BELParser
  module Language
    module Version1
      module Functions
        # ProteinAbundance: Denotes the abundance of a protein
        class ProteinAbundance
          extend Function

          SHORT       = :p
          LONG        = :proteinAbundance
          RETURN_TYPE = BELParser::Language::Version1::ReturnTypes::ProteinAbundance
          DESCRIPTION = 'Denotes the abundance of a protein'.freeze

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
  
            class ProteinAbundanceWithFusionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:ProteinAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::Fusion))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinAbundanceWithProteinModificationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:ProteinAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::ProteinModification))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:proteinModification)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinAbundanceWithSubstitutionSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:ProteinAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::Substitution))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:substitution)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinAbundanceWithTruncationSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:ProteinAbundance))))),
                argument(
                  term(
                    function(
                      identifier(
                        return_type_of(BELParser::Language::Version1::ReturnTypes::Truncation))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance,F:truncation)proteinAbundance'.freeze
              private_constant :STRING_FORM

              def self.semantic_ast
                AST
              end

              def self.string_form
                STRING_FORM
              end
            end
  
            class ProteinAbundanceSignature
              extend BELParser::Language::Signature

              private_class_method :new

              AST = BELParser::Language::Semantics::Builder.build do
                term(
                function(
                  identifier(
                    function_of(ProteinAbundance))),
                argument(
                  parameter(
                    prefix(
                      identifier(
                        has_namespace,
                        namespace_of(:*))),
                    value(
                      value_type(
                        has_encoding,
                        encoding_of(:ProteinAbundance))))))              
              end
              private_constant :AST

              STRING_FORM = 'proteinAbundance(E:proteinAbundance)proteinAbundance'.freeze
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