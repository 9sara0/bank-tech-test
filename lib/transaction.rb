class Transaction
  attr_reader :date, :credit, :deposit, :new_account_balance

  def initialize(credit, deposit, new_account_balance)
    @date                = Date.today
    @credit              = credit
    @deposit             = deposit
    @new_account_balance = new_account_balance
  end

end
