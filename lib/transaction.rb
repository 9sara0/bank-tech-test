class Transaction
  attr_reader :date, :credit, :debit, :new_account_balance

  def initialize(credit, debit, new_account_balance)
    @date                = Date.today
    @credit              = credit
    @debit               = debit
    @new_account_balance = new_account_balance
  end

end
