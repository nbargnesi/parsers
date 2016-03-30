require_relative 'any'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # Substitution return type.
        class Substitution < Any
          def self.to_sym
            raise_not_implemented(__method__) if self != Substitution
            :substitution
          end
        end
      end
    end
  end
end
