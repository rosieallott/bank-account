require 'account'

describe Account do
  subject(:account) {described_class.new}
  let(:amount) {double :amount}
  let(:now) { Time.now }

  describe "#retrieve_transactions shows the account transactions details" do
    it "details should be stored in an array" do
      expect(account.retrieve_transactions).to be_an(Array)
    end
    it "initially contains no transactions" do
      expect(account.retrieve_transactions).to be_empty
    end
  end

  describe "#store_transaction adds details to the array" do
    before do
      Timecop.freeze
      account.store_transaction(:debit, amount)
    end

    it "stores a transaction" do
      expect(account.retrieve_transactions.length).to equal(1)
    end
    it "details argument type stored in hash with key: type" do
      expect(account.retrieve_transactions.first[:type]).to eq(:debit)
    end
    it "details argument amount stored in hash with key: amount" do
      expect(account.retrieve_transactions.first[:amount]).to eq(amount)
    end
    it "adds the date and time transaction was carried out at" do
      expect(account.retrieve_transactions.first[:date]).to eq(now)
    end
  end
end
