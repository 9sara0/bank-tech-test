require "account"

describe Account do
  subject(:account) { described_class.new }
  let(:amount)      { double :amount }

  context "When initialized" do
    it "has a zero balance" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "increases balance by 'amount'" do
      expect{account.deposit(7)}.to change{account.balance}.by 7
    end
  end
end
