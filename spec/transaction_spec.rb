require "transaction"

describe Transaction do
  let(:credit)          { double :credit }
  let(:debit)           { double :debit }
  let(:new_balance)     { double :new_balance }
  subject(:transaction) { described_class.new(credit, debit, new_balance) }

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
      expect(transaction.balance).to eq new_balance
    end
  end

end
