require 'pry'
class Transfer
  attr_accessor  :status
  attr_reader :sender, :receiver, :amount
  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  def execute_transaction
    if valid? && self.sender.balance >= self.amount && self.status != "complete"
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  def reverse_transfer
    binding.pry
    if self.status == "complete"
      self.sender += self.amount
      self.receiver -= self.amount 
      self.status = "pending"
    end
  end
end
