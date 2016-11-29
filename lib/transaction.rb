require "date"

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: credit, debit: debit, new_balance: new_balance)
    @date   = Date.today
    @credit = credit
    @debit  = debit
    @balance = new_balance
  end
end
