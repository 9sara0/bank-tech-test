require "transaction"

describe Transaction do
  let(:credit)          { double :credit }
  subject(:transaction) { described_class.new(credit) }

  context "When initialized" do
    it "knows the transaction's date" do
      expect(transaction.date).to eq Date.today
    end

    it "saves the credited amount" do
      expect(transaction.credit).to eq credit
    end
  end

end
