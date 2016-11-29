require_relative "transaction_log"
require_relative "statement"

class Account
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = TransactionLog.new
  end

  def deposit(cridet)
    @balance += cridet
    new_transaction(cridet, 0)
    save_transaction
  end

  def withdraw(debit)
    @balance -= debit
    new_transaction(0, debit)
    save_transaction
  end

  def print_statement
    create_statement
    @statement.get
  end


  private
  attr_reader :transaction, :statement

  def new_transaction(cridet, debit)
    balance = @balance
    @transaction = history.create_transaction(cridet, debit, balance)
  end

  def save_transaction
    history.save_transaction(@transaction)
  end

  def create_statement
    @statement = Statement.new(history.log)
  end

end
