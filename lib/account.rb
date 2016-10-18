class Account

  def initialize
    @details = []
  end

  def retrieve_details
    details.dup
  end

  def store(type, amount)
    details.push({type: type, amount: amount})
  end

  private

  attr_reader :details

end
