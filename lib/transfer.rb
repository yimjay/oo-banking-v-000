class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.status == "open" && @receiver.status == "open"
  end
  
  def execute_transaction
    if @sender.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "completed"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    @sender.balance += @amount
    @receiver.balance -= @amount
  end
  
end
