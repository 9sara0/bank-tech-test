require "transaction"

describe Transaction do
  let(:credit)          { double :credit }
  let(:debit)           { double :debit }
  let(:balance)         { double :balance }
  subject(:transaction) { described_class.new(credit: credit, debit: debit, balance: balance) }

  context "When initialized" do
    it "knows the transaction's date" do
      expect(transaction.date).to eq Date.today
    end

    it "saves the credited amount" do
      expect(transaction.credit).to eq credit
    end

    it "saves the debited amount" do
      expect(transaction.debit).to eq debit
    end

    it "saves the balance after the transaction is preformed" do
      expect(transaction.balance).to eq balance
    end

    it "has a default credit of zero" do
      transaction = described_class.new(debit: debit, balance: balance)
      expect(transaction.credit).to eq 0
    end
  end
end
