class BankAccount
  attr_accessor :balance
  attr_reader :name, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def deposit(money)
    self.balance += money
  end
  def display_balance
    "Your balance is $#{self.balance}."
  end
  def valid?
    self.status == "open" && self.balance > 0 ? true : false 
  end
end
