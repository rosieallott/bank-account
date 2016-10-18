class Account

  def initialize
    @details = []
    @current_balance = 0
  end

  def retrieve_transactions
    details.dup
  end

  def store_transaction(type, amount)
    update_balance(type, amount)
    details.push({type: type, amount: amount, date: Time.now, balance: @current_balance})
  end

  private

  attr_reader :details

  def update_balance(type, amount)
    type == :credit ? @current_balance += amount : @current_balance -= amount
  end

end
