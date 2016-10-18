require 'statement'

describe Statement do
  subject(:statement) {described_class.new(account)}
  INITIAL_DEPOSIT = 100
  WITHDRAWAL = 25
  let(:account) {double :account, retrieve_transactions: [{type: :credit, amount: INITIAL_DEPOSIT, date: Time.new(2016, 10, 18, 15, 26, 0), balance: INITIAL_DEPOSIT},{type: :debit, amount: WITHDRAWAL, date: Time.new(2016, 10, 18, 15, 26, 0), balance: INITIAL_DEPOSIT-WITHDRAWAL}]}

  describe "#display method" do
    before do
      transactions = account.retrieve_transactions
    end

    it "should delegate to account to retrieve details" do
      expect(account).to receive(:retrieve_transactions)
      statement.display
    end

    it "should output a statement to the stdout" do
      string = "date || credit || debit || balance\n"
      string << "16/10 15:26:00" + " ||  || 25 || 75\n"
      string << "16/10 15:26:00" + " || 100 ||  || 100\n"
      expect{statement.display}.to output(string).to_stdout
    end
  end

end
