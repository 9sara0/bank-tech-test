require "date"

class Transaction
  attr_reader :date, :credit, :debit

  def initialize(credit, debit)
    @date   = Date.today
    @credit = credit
    @debit  = debit
  end
end
