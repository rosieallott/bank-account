class Account

  def initialize
    @details = []
  end

  def retrieve_transactions
    details.dup
  end

  def store_transaction(type, amount)
    details.push({type: type, amount: amount})
  end

  private

  attr_reader :details

end
