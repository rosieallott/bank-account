require 'account'

describe Account do
  subject(:account) {described_class.new}
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
      account.store_transaction(:credit, 100)
    end

    it "stores a transaction" do
      expect(account.retrieve_transactions.length).to equal(1)
    end
    it "details argument type stored in hash with key: type" do
      expect(account.retrieve_transactions.first[:type]).to eq(:credit)
    end
    it "details argument amount stored in hash with key: amount" do
      expect(account.retrieve_transactions.first[:amount]).to eq(100)
    end
    it "adds the date and time transaction was carried out at" do
      expect(account.retrieve_transactions.first[:date]).to eq(now)
    end
  end

  describe "updating balance tests" do
    before do
      Timecop.freeze
      account.store_transaction(:credit, 100)
    end

    it "credits balance by amount" do
      expect(account.retrieve_transactions.first[:balance]).to eq(100)
    end
    it "stores the latest balance" do
      account.store_transaction(:credit, 100)
      expect(account.retrieve_transactions.last[:balance]).to eq(200)
    end
    it "debits balance by amount" do
      account.store_transaction(:debit, 100)
      expect(account.retrieve_transactions.last[:balance]).to eq(0)
    end
  end
end
