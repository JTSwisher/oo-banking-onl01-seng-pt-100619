class Transfer 
  attr_accessor :sender, :receiver, :amount 
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    if self.valid?
      true 
    else 
      false 
    end 
  end 
  
  
  
  
end 