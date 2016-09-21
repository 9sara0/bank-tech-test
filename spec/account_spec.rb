require 'account'

describe Account do
  subject (:my_account) {described_class.new}

  context 'when initialized' do
    it 'has 0 balance' do
      expect(my_account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it "adds cridet credit to the account's balance" do
      my_account.deposit(7)
      expect(my_account.balance).to eq 7
    end
  end
end
