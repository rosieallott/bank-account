require_relative 'account'

class Statement

  def initialize(account)
    @account = account
  end

  def display
    retrieve_from_account
  end

  private

  attr_reader :account

  def retrieve_from_account
    @account.retrieve_transactions
  end

end
