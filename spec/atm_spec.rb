require 'atm'

describe Atm do
  subject(:atm) {described_class.new(account, statement_class)}
  let(:statement_class) {double :statement_class, new: statement}
  let(:statement) {double :statement, display: nil}
  let(:account) {double :account, retrieve_transactions: nil}
  DEPOSIT = 100

  describe "#view_statement" do
    it "should instantiate Statement class" do
      expect(statement_class).to receive(:new)
      atm.view_statement
    end
    it "should call display on the instance of Statement" do
      expect(statement).to receive(:display)
      atm.view_statement
    end
  end

  describe "#deposit and #withdraw" do
    it "deposit calls store on account with :credit argument" do
      allow(account).to receive(:store_transaction).with(:credit, DEPOSIT)
      expect(account).to receive(:store_transaction).with(:credit, DEPOSIT)
      atm.deposit(DEPOSIT)
    end
    it "deposit calls store on account with :debit argument" do
      allow(account).to receive(:store_transaction).with(:debit, DEPOSIT)
      expect(account).to receive(:store_transaction).with(:debit, DEPOSIT)
      atm.withdraw(DEPOSIT)
    end
  end
end
