require "statement"

describe Statement do
  let(:transaction_log) { double :transaction_log }
  subject(:statement) { described_class.new(transaction_log) }
  context 'when initialized' do
    it 'accepts a TransactionLog object as an argument' do
      expect(statement.log).to eq transaction_log
    end
  end
end
