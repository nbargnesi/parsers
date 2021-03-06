require_relative 'any'

module BELParser
  module Language
    module Version2_0
      module ReturnTypes
        # List return type.
        class List < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != List
            :list
          end
        end
      end
    end
  end
end
