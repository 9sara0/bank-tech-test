require "account"

describe Account do
  subject(:account) { described_class.new }

  context "When initialized" do
    it "has a zero balance" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "increases balance by 'amount'" do
      expect{account.deposit(7)}.to change{account.balance}.by 7
    end

    it "creates a new transaction" do
      expect(account).to receive(:create_transaction)
      account.deposit(7)
    end
  end

  describe "#withdraw" do
    it "deducts 'amount' from balance" do
      expect{account.withdraw(7)}.to change{account.balance}.to -7
    end
  end
end
