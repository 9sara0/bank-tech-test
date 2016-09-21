require 'account'

describe Account do
  context 'when initialized' do
    my_account = Account.new
    it 'has 0 balance' do
      expect(my_account.balance).to eq 0
    end
  end
end
