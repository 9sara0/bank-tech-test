class TransactionHistory
  attr_reader :log

  def initialize
    @log = []
  end
  
  def save_transaction(transaction)
    @log << transaction
  end
end
