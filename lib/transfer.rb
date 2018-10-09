class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
  
  def valid?
    if sender.valid? && receiver.valid? 
      true
    else
      false
    end
  end
  
  def execute_transactoin
    
  end
  
  def reverse_transaction
    
  end
end
