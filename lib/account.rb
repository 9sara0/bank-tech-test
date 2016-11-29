require_relative "transaction"
require_relative "transaction_history"
require_relative "statement"
class Account
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = TransactionHistory.new
  end

  def deposit(amount)
    @balance += amount
    create_transaction(credit: amount)
    save_transaction
  end

  def withdraw(amount)
    @balance -= amount
    create_transaction(debit: amount)
    save_transaction
  end

  def print_statement
    create_statement
    @statement.print
  end


  private
  attr_reader :transaction

  def create_transaction(credit: credit=0, debit: debit=0)
    @transaction = Transaction.new(credit: credit, debit: debit, balance: balance)
  end

  def save_transaction
    @history.save_transaction(transaction)
  end

  def create_statement
    @statement = Statement.new(history.log)
  end
end
