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
  
  def execute_transactoin
    if valid? && receiver.balance > amount && self.status == "complete"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    elsif 
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transaction
    
  end
end
