require "date"

class Transaction
  attr_reader :date, :credit

  def initialize(credit)
    @date   = Date.today
    @credit = credit
  end
end
