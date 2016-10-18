require_relative 'account'
require_relative 'statement'

class Atm

  def initialize(statement_class = Statement)
    @statement_class = statement_class
  end

  def view_statement(account)
    statement = @statement_class.new(account)
    statement.display
  end
end
