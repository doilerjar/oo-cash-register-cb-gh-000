class CashRegister
  attr_accessor :total, :discount 
  
  def initialize()
    @total = 0
  end 
  
  
  def new
    @total = 0
  end
  
  def total
    @total  
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
  end 
  
  def apply_discount
    @total -= @total*@discount
  end 
  
end 