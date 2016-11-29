require "date"

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: credit=0, debit: debit=0, balance: balance)
    @date    = Date.today
    @credit  = credit
    @debit   = debit
    @balance = balance
  end
end
