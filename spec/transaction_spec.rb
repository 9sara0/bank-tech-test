require "transaction"

describe Transaction do
  subject(:transaction) { described_class.new(7,0,7) }
  context 'when initialized' do
    it 'saves todays date' do
      expect(transaction.date).to eq Date.today
    end

    it 'saves the credited amount' do
      expect(transaction.credit).to eq 7
    end

    it 'saves the debited amount' do
      expect(transaction.debit).to eq 0
    end

    it 'saves the accounts balance after the transaction is completed' do
      expect(transaction.new_account_balance).to eq 7
    end
  end
end
