require 'atm'

describe Atm do
  subject(:atm) {described_class.new(statement_class)}
  let(:statement_class) {double :statement_class, new: statement}
  let(:statement) {double :statement, display: nil}
  let(:account) {double :account}

  describe "#view_statement" do
    it "should instantiate Statement class" do
      atm.view_statement(account)
      expect(statement_class).to receive(:new)
    end
    it "should call display on the instance of Statement" do
      atm.view_statement(account)
      expect(statement).to receive(:display)
    end
  end
end
