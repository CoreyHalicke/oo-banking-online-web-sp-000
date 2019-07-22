class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  @@transaction = []
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
    binding.pry
    if self.valid? && @status == "pending" && @@transaction != self
      @@transaction = []
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
      @@transaction << self
    end
  end
end
