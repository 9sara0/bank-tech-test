require "transaction"

describe Transaction do
  subject(:transaction) { described_class.new }

  context "When initialized" do
    it "knows the transaction's date" do
      expect(transaction.date).to eq Date.today
    end
  end

end
