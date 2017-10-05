class Transfer
  attr_reader :sender, :receiver
  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end


end
