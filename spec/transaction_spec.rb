require "transaction"

describe Transaction do
  let(:credit)          { double :credit }
  let(:debit)           { double :debit }
  subject(:transaction) { described_class.new(credit, debit) }

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
  end

end
