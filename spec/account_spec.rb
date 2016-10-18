require 'account'

describe Account do
  subject(:account) {described_class.new}
  let(:amount) {double :amount}

  describe "#retrieve_details shows the account transaction details" do
    it "details should be stored in an array" do
      expect(account.retrieve_details).to be_an(Array)
    end
    it "initially contains no transactions" do
      expect(account.retrieve_details).to be_empty
    end
  end

  describe "#store adds details to the array" do
    it "stores a transaction" do
      account.store("debit", amount)
      expect(account.retrieve_details.length).to equal(1)
    end
  end
end
