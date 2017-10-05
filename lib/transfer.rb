class Transfer
  attr_reader :sender, :receiver, :status, :amount
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
    if valid? && self.sender.balance >= self.amount
      self.sender.balance -= self.amount 
      self.receiver.balance += self.amount 
      self.status = "complete"
    end
  end
end
