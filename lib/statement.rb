require_relative "transaction_log"
class Statement
  HEADER = "date || credit || debit || balance"

  attr_reader :log

  def initialize(log)
    @log = log
  end

  def get
    statement = ""
    @log.reverse.each do |transaction|
      statement << "\n#{date_format(transaction.date)} || #{float_format(transaction.credit)} || #{float_format(transaction.debit)} || #{float_format(transaction.new_account_balance)}"
    end
    return HEADER + statement
  end

  private

  def date_format(date)
    date.strftime "%d/%m/%Y"
  end

  def float_format(float)
    float == 0 ? "" : format("%.2f", float)
  end

end
