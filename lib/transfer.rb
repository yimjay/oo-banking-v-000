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
    
  end
  
  
  
  
end
