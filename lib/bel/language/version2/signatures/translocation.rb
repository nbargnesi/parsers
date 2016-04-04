require_relative '../../version1'
require_relative '../../signature'
require_relative '../../semantic_ast'

module BEL
  module Language
    module Version1
      module Signatures
        # Translocation signature.
        class Translocation
          extend BEL::Language::Version1
          extend BEL::Language::Signature

          private_class_method :new

          AST = BEL::Language::Semantics::Builder.build do
            term(
              function(
                identifier(
                  function_of(BEL::Language::Version2::Functions::Translocation))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(BEL::Language::Version2::ReturnTypes::Abundance))))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(nil))))),
              argument(
                term(
                  function(
                    identifier(
                      return_type_of(nil))))))
          end
          private_constant :AST

          STRING_FORM = 'translocation(F:abundance,F:fromLoc,F:toLoc)abundance'
          private_constant :STRING_FORM

          def self.semantic_ast
            AST
          end

          def self.string_form
            STRING_FORM
          end
        end
      end
    end
  end
end