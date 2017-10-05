class Transfer
  attr_reader :sender, :receiver, :pending
  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end


end
