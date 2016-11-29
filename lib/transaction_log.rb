require_relative "transaction"

class TransactionLog
  attr_reader :log, :transaction

  def initialize
    @log = []
  end

  def create_transaction(cridet, debit, new_account_balance)
    @transaction = Transaction.new(cridet, debit, new_account_balance)
  end

  def save_transaction(transaction)
    @log << transaction
  end

end
