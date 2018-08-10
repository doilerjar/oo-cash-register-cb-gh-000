class CashRegister
  attr_accessor :total, :discount, :last_amount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end 
 
  def total
    @total  
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
  end 
  
  def apply_discount

  end 
  
  def void_last_transaction
    @total -= @last_amount
  end
end 