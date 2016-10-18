require 'statement'

describe Statement do
  subject(:statement) {described_class.new(account)}
  let(:account) {double :account, retrieve_transactions: "details"}

  describe "#display method" do
    it "should delegate to account to retrieve details" do
      allow(account).to receive(:retrieve_transactions)
      statement.display
      expect(account).to receive(:retrieve_transactions)
    end

    # it "should output a statement to the stdout" do
    #   string = "date || credit || debit || balance"
    #   expect{statement.display}.to output(string).to_stdout
    # end
  end

end
