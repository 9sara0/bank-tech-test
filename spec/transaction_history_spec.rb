require "transaction_history"

describe TransactionHistory do
  let(:transaction) { double :transaction }
  subject(:history) { described_class.new }

  context 'When initialized' do
    it 'has empty log' do
      expect(history.log).to be_empty
    end
  end

  describe "#save_transaction" do
    it "saves a passed transaction to the log" do
      history.save_transaction(transaction)
      expect(history.log).to include transaction
    end
  end
end
