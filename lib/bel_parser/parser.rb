require_relative 'ast_filter'
require_relative 'ast_generator'
require_relative 'parsers/common'
require_relative 'parsers/expression'
require_relative 'parsers/bel_script'

module BELParser
  # Parser is a line parser that supports recognition using all ragel parsers.
  class Parser
    include BELParser::Parsers::Common
    include BELParser::Parsers::Expression
    include BELParser::Parsers::BELScript

    FILTER = BELParser::ASTFilter.new(
      :blank_line,
      :comment_line,
      :identifier,
      :string,
      :list,
      :comment,
      :parameter,
      :term,
      :relationship,
      :observed_term,
      :statement_simple,
      :nested_statement,
      :define_annotation,
      :define_namespace,
      :set,
      :unset
    )

    def each(io)
      if block_given?
        filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
        filtered_ast.each do |results|
          yield results
        end
      else
        enum_for(:each, io)
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Parser.new.each($stdin) do |line_result|
    line_number, line, ast_results = line_result
    puts "#{line_number}: #{line}"
    ast_results.each do |ast|
      puts ast.to_s(1)
    end
  end
end