class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? && @status == "pending"
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
    end
      @status = "rejected"
  end
end
