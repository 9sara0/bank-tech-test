require "transaction_log"

describe TransactionLog do
  subject (:transaction_log) {described_class.new}

  context 'when initialized' do
    it 'has empty log' do
      expect(transaction_log.log).to eq []
    end
  end

  describe '#create_transaction' do
    it 'creates a new transaction object' do
      transaction_log.create_transaction(7,0,7)
      expect(transaction_log.transaction).to be_a_kind_of(Transaction)
    end
  end

  describe '#save_transacrion' do
    it 'saves a passed transection to the log' do
      transaction = transaction_log.create_transaction(7,0,7)
      transaction_log.save_transaction(transaction)
      expect(transaction_log.log).to include transaction
    end
  end

end
