require_relative 'account'

class Statement

  def initialize(account)
    @account = account
  end

  def display
    details = retrieve_from_account.reverse
    puts "date || credit || debit || balance\n"
    details.each do |trn|
      puts ("#{trn[:date].strftime("%y/%m %H:%M:%S")}" + " || " + "#{trn[:type] == :credit ? trn[:balance] : " || " }"  + "#{trn[:type] == :credit ? " || " : trn[:balance] }" + " || " + "#{trn[:balance]}")
    end
  end

  private

  attr_reader :account

  def retrieve_from_account
    @account.retrieve_transactions
  end

end
