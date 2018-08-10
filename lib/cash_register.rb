require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :last_amount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items = []
  end 
 
  def total
    @total  
  end 
  
  def add_item(title, price, quantity=1)
    quantity.times{ @all_items << title }
    @total += price * quantity
    @last_amount = price * quantity
  end 
  
  def apply_discount
    if @discount != 0
      @total = @total - @total * (@discount.to_f/100)
      # binding.pry
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end 
  
  def items
    @all_items
  end 
  
  def void_last_transaction
    @total -= @last_amount
  end
end 