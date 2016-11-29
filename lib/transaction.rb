require "date"

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit, debit, new_balance)
    @date   = Date.today
    @credit = credit
    @debit  = debit
    @balance = new_balance
  end
end
