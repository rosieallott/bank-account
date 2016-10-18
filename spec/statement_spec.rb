require 'statement'

describe Statement do
  subject(:statement) {described_class.new(account)}
  let(:account) {double :account, retrieve_transactions: "details"}

  describe "#display method" do
    it "should delegate to account to retrieve details" do
      expect(statement.display).to eq("details")
    end
  end
end
