require "transaction"
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    create_transaction(credit: amount)
  end

  def withdraw(amount)
    @balance -= amount
  end


  private
  attr_reader :transaction

  def create_transaction(credit: credit=0, debit: debit=0)
    @transaction = Transaction.new(credit: credit, debit: debit, balance: balance)
  end

end
