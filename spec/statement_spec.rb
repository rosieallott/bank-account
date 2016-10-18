require 'statement'

describe Statement do
  subject(:statement) {described_class.new(account)}
  let(:now) { Time.now }
  let(:account) {double :account, retrieve_transactions: [{type: :credit, amount: 100, date: Time.new(2016, 10, 18, 15, 26, 0), balance: 100},{type: :debit, amount: 25, date: Time.new(2016, 10, 18, 15, 26, 0), balance: 75}]}


  describe "#display method" do
    before do
      Timecop.freeze
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
