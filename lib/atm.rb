require_relative 'account'
require_relative 'statement'

class Atm

  def initialize(account, statement_class = Statement)
    @account = account
    @statement_class = statement_class
  end

  def view_statement
    statement = @statement_class.new(@account)
    statement.display
  end

  def deposit(amount)
    @account.store_transaction(:credit, amount)
  end

  def withdraw(amount)
    @account.store_transaction(:debit, amount)
  end

end
