require 'account'

describe Account do
  subject (:my_account) {described_class.new}

  context 'when initialized' do
    it 'has 0 balance' do
      expect(my_account.balance).to eq 0
    end

    it 'instantiates a TransactionLog object ' do
      expect(my_account.history).to be_a_kind_of(TransactionLog)
    end
  end

  describe '#deposit' do
    it "adds cridet credit to the account's balance" do
      expect{my_account.deposit(7)}.to change{my_account.balance}.by 7
    end
  end

  describe '#withdraw' do
    it "deduts debit amount from the account's balane" do
      expect{my_account.withdraw(7)}.to change{my_account.balance}.by -7
    end
  end
end
