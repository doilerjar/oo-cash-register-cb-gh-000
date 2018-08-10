class CashRegister
  
  @@all_items = []
  
  attr_accessor :total, :discount, :last_amount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end 
 
  def total
    @total  
  end 
  
  def add_item(title, price, quantity=1)
    @@all_items << title
    @total += price * quantity
  end 
  
  def apply_discount
    @total -= @discount
  end 
  
  def item
    @@all_items
  end 
  
  def void_last_transaction
    @total -= @last_amount
  end
end 