require_relative 'account'

class Statement

  def initialize(account)
    @account = account
  end

  def display
    details = retrieve_from_account.reverse
    format_transactions(details)
  end

  private

  attr_reader :account

  def retrieve_from_account
    @account.retrieve_transactions
  end

  def format_transactions(details)
    string = "date || credit || debit || balance\n"
    details.each do |trn|
      string << "#{trn[:date].strftime("%y/%m %H:%M:%S")}" + " || "
      string << "#{trn[:type] == :credit ? trn[:amount] : " || " }"
      string << "#{trn[:type] == :credit ? " || " : trn[:amount] }" + " || "
      string << "#{trn[:balance]}\n"
    end
    puts string
  end

end
