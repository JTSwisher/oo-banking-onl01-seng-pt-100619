class Transfer 
  attr_accessor :sender, :receiver, :amount, :status 
  attr_reader 

  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    sender.valid? && receiver.valid?
  end 
  
  def execute_transaction 
    if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount 
      self.status = "complete"
    else 
      transfer_rejected
    end  
  end 
  
  def reverse_transfer
    if valid? && sender.balance > amount && self.status == "complete"
      sender.balance += amount
      receiver.balance -= amount 
      self.status = "reversed"
    else 
      transfer_rejected
    end 
  end 
  
  def transfer_rejected
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
  end 
  
end 